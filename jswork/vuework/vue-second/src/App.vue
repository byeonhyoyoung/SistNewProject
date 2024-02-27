<template>
  <div id="app">
    <OptionsApi></OptionsApi>
    <CompositionApi></CompositionApi>
  </div>
</template>

<script>
import OptionsApi from './components/OptionsApi.vue';
import CompositionApi from './components/CompositionApi.vue';

export default {
    setup() {
        return {};
    },
    components: { OptionsApi, CompositionApi }
}
</script>

<style lang="scss" scoped>

</style>