<template>
  <div class="container form-container-padding">
    <div class='title-form-spacing'>
        <h4>Editer</h4>
    </div>
    <div>
      <div class="mb-3 input-spacing">
          <label htmlFor="Nom_produit" class="form-label">Nom du produit:</label>
          <input
              type="text"
              class="form-control"
              id="Nom_produit"
              placeholder="Entrer ici le nom du produit"
              v-model="product.name"
              required
          />
      </div>
      <div class="mb-3 input-spacing">
          <label htmlFor="photo" class="form-label">Photo:</label>
          <input
              type="text"
              class="form-control"
              id="photo"
              placeholder="Entrer ici le nom de la photo"
              v-model="product.photo"
              required
          />
      </div>
      <div class="mb-3 input-spacing">
          <label htmlFor="description" class="form-label">Description:</label>
          <input
              type="text"
              class="form-control"
              id="description"
              placeholder="Entrer ici la description du produit"
              v-model="product.description"
              required
          />
      </div>
      <div class="mb-3 input-spacing">
          <label htmlFor="prix" class="form-label">Prix du produit:</label>
          <input
              type="text"
              class="form-control"
              id="prix"
              placeholder="Entrer ici le prix du produit"
              v-model="product.price"
              required
          />
      </div>
      <div class="mb-3 input-spacing">
          <label htmlFor="prix" class="form-label">Categorie:</label>
          <input
              type="text"
              class="form-control"
              id="prix"
              placeholder="Entrer ici la categorie du produit"
              v-model="product.type"
              required
          />
      </div>
      <div class='form-btn-spacing'>
          <button type="submit" class="btn btn-dark" @click="saveProduct">Créer</button>
      </div>
    </div>
  </div>
</template>

<script>
import ProductDataService from '@/services/ProductDataService'

export default {
  props: ['addInv'],
  data () {
    return {
      submitted: false,
      product: {
        name: '',
        photo: '',
        price: '',
        description: '',
        type: ''
      }
    }
  },
  methods: {
    saveProduct () {
      ProductDataService.create(this.product)
        .then(response => {
          this.product.id = response.data.id
          this.addInv(this.product)
          this.submitted = true
          this.$router.push({ name: 'home' })
        })
    },
    newProduct () {
      this.submitted = false
      this.product = {}
    }
  }
}
</script>
