var vm = new Vue ({
  el: "#indexEle",
  data: {
    materialList: {
      ginSaber: 10,
      tume: 10,
      kisekiSaber: 10
    },
    servantsStatus: {
      alttila: {
        level: 4,
        skill: '4/3/2'
      }
    },
    servantsData: {
      alttila: {
        level: [
          {ginSaber: 3},
          {ginSaber: 5, tume: 4}
        ],
        skill: [
          {kisekiSaber: 3},
          {kisekiSaber: 8},
          {kisekiSaber: 3},
          {kisekiSaber: 3},
          {kisekiSaber: 3},
          {kisekiSaber: 3},
          {kisekiSaber: 3},
          {kisekiSaber: 3},
          {kisekiSaber: 3},
          {kisekiSaber: 3}
        ]
      }
    }
  },
  method: {

  }
});
