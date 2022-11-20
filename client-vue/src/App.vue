<template>
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                      <router-link class="nav-link active" aria-current="page" to="/">Accueil</router-link>
                    </li>
                    <li class="nav-item">
                      <router-link class="nav-link" to="/add-product">Ajouter un produit</router-link>
                    </li>
                    <li class="nav-item">
                      <router-link class="nav-link" to="/about">Notre entreprise</router-link>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
  <router-view
  :inventory = "inventory"
  :addInv = "addInventory"
  :removeInv = "removeInventory"
  :updateInv = "updateInventory"
  />
</template>
<script>
import ProductDataService from '@/services/ProductDataService'

export default {
  data () {
    return {
      inventory: []
    }
  },
  methods: {
    addInventory (data) {
      this.inventory.push(data)
    },
    removeInventory (index) {
      this.inventory.splice(index, 1)
    },
    updateInventory (index, data) {
      this.inventory[index].name = data.name
      this.inventory[index].photo = data.photo
      this.inventory[index].price = data.price
      this.inventory[index].description = data.description
      this.inventory[index].category = data.category
    }
  },
  mounted () {
    ProductDataService.getAll()
      .then(response => {
        this.inventory = response.data
        console.log(response.data)
      })
  }
}
</script>
