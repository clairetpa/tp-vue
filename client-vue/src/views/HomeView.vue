<template>
    <div class="container">
        <h2 class='presentation-title-style'>
            Découvrez nos produits !
        </h2>
        <div class="row space-around">
            <div v-for="(product) in inventory" :key="product.id" class="card produit">
                <div class='image-wrapper'>
                    <img :src="('./img/'+product.photo)" class='image'/>
                </div>
                <div class="card-body">
                    <h5 class="card-title">{{product.name}}</h5>
                    <p class="card-text">{{product.description}}</p>
                    <p class="card-text">${{product.price}} CAD</p>
                    <p class="card-text">{{product.type}}</p>
                    <div class="buttons">
                        <router-link :to="'edit-product/'+product.id" class="btn btn-dark">Voir</router-link>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
  props: ['inventory']
}
</script>
