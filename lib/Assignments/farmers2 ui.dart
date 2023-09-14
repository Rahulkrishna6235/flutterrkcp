import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: farmerui(),));
}
class farmerui extends StatelessWidget {
  const farmerui({super.key});

  @override
  Widget build(BuildContext context) {
    List Imagelist =[
      NetworkImage("https://img.freepik.com/free-photo/healthy-vegetables-wooden-table_1150-38014.jpg?w=2000"),
      NetworkImage("https://img.freepik.com/free-photo/healthy-vegetables-wooden-table_1150-38014.jpg?w=2000"),
      NetworkImage("https://img.freepik.com/free-photo/healthy-vegetables-wooden-table_1150-38014.jpg?w=2000"),
      NetworkImage("https://img.freepik.com/free-photo/healthy-vegetables-wooden-table_1150-38014.jpg?w=2000"),
    ];

    return Scaffold(
      body: SafeArea(
      child: CustomScrollView(
      slivers: [
      SliverAppBar(
        backgroundColor: Colors.green,
      floating: true,
      pinned: false,
      title: const Text('FARMERS FRESH ZONE'),
      actions: [
        Center(child: Icon(Icons.location_on_outlined,size: 16,)),
        Center(child: Text("Kochi")),
        Icon(Icons.arrow_drop_down,)
      ],
      bottom: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Container(
          width: double.infinity,
          height: 40,
          color: Colors.white,
          child: const TextField(
            decoration: InputDecoration(
                hintText: 'Search for vegitables and fruits....',
                prefixIcon: Icon(Icons.search),
                ),
          ),
        ),
      ),
    ),
SliverList(delegate: SliverChildBuilderDelegate(
  childCount: 1,
    (context, index) =>Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(onPressed: (){}, child: Text("Vegitables"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(onPressed: (){}, child: Text("Fruits")),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(onPressed: (){}, child: Text("Exotic")),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(onPressed: (){}, child: Text("fresh cuts")),
                ),
              ],
            ),
          ),
          Container(

            width: 600,height: 200,
            //color: Colors.orange,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEBMVFRUVFRUWFRcXFxUXFRUVFhUWFhUWGBgYHiggGB4lHhUWITEhJSkrLi4uFx8zOTMtNygtLisBCgoKDg0OGhAQGyslICUtLS0tLS0tLS0tLy4tLS0tLS0tLS0tLS0tLS8rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAMMBAwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAAAgMEBQYBB//EAEQQAAEDAQQFCAcHAwMEAwAAAAEAAhEDBBIhMQVBUWGRBhMiUnGBodEUMpKxwdLwFUJTYnKi4SOC8TOywgcWY+IkQ6P/xAAaAQACAwEBAAAAAAAAAAAAAAAAAgEDBAUG/8QAOBEAAQMCBAQCCQMEAgMAAAAAAQACEQMhBBIxQVFhcZEFExQiUoGhscHR8BUyQnKS4fGCsiMzU//aAAwDAQACEQMRAD8Atl1CF4Ve6QhCEIQhCEIQhCEIQhCEIQhCEIQhdp0y4wI7yGji4gJdqszqZh90HYHNce+6TCbKYmLJc7ZyzdNoQhzSDBGOHiJHvSymNkIT9awvaYN2b12A9hN6YiAZzSa1nLRJLYkgQZmMyNwmE5puGoKQVWmIOqaQhBBidRkDtET7xxSAynNkIQhCEIQm6lSI3mO9SBKSpUbTaXOMAJTjGaadWEwDJ+sVEfaw4ETdIi92AgyOCDaGsF4NguPfA1+GSsFI76rgVfFS55h4awXmCTHDhM2j5gSppCQVApW7ESMgCRlLjGCfbXykgkTf3TluH8INJwV9Hx6i4w8RM/MC/PU8gnXNTTmpJe4mQQIADZ+8YknDVjnuQAdZk9n19FBZC0YbxN9V12ANkguLgALmBxmBMc01UTD1JqqM9AXapuDmhzTIOibXF1cUq1aNCEKlY0IQhCEIQhCEJo1hMJTwTgO9NQQLsd+pSBKglSEJDD9bUtQpQhCEIQrhtRpdULSLxcyDzjGdC7BgvBBExIVMqHSNrtDTUDL2Dnc1FObzuZpuZTOB6LnFwLsMokLThSc0COPz0seKzYoCAT07kHlwWyq1GFrouB8vLIyFO9i2cMc4wmJ2hR7fVLqjXFwIu08ZB+62ZjLGcCsq20WlxfBIuucSCyAAKlVrGsN3py0U3a+1t4Q9XtdU0KhaHNqNeBMThzoDrvRMgNnG6cIOJV7mVHAC2oGva3v/ADehhY0l19CdO4B93z92yrvitfApAc9N9tRpeWl+ZF84RuSWWtrgA90kc5d6TWw6RdMkEDC9BKwdqt9oDQGhxIa5x6FQuf8A0qxHSDGgAOawRdBkjaJkDSNdrg0svTWLcKbxFMvY0dKYkNeXTEEN1KwNq3IAveJ6cABt+Qq3eW6AZtaY5HmTv71s6j5vXC1tT+niXsMiHXunAbPqTGca8VGtdQmmBeaQKlSQ0gDEMggZx60LGWPSVp5qmXMc5zabb39N7ekWMvXmnElpJJuwDkMldWa0uNNrnCHEGQAQMyAYOIkQY3681VXFRgvvbXnOluUnpwVtHy3OEbX05RrPZTEJgAiDMycU+sK3yhR7ZSvMIGert4qQhAMGUlSmKjCx2hEKhpUquF4FjibocbpxMkmAdkqZabPADQAS0EzkMcJPbj4qVbW9AxmMR/bj8EyKt58t3RwET2Ge8haPMLvWXnH4ShhT5FyXRBNzF5AHHMBNpg62ChkBrgH023jgYyA2naU02WmCJaPVaHZnUXTBVhWscjB5B24HwOpN17IDdDjJEkHIjbl3KRUbZU4rw2rlc5wsLglwtNodHedJ3XKznRMBupoGMRv8lAL3N3Bwid2uCDmVNJBgHHMY44dms4Z9yao0zeAogAHvOGB7NeKZpgFY69PDECLC1pkibk3gHedIBAuU5RqXhALdwBF49vkmXp24bxId0dd1uPZe4LtcsIlpJO/X4Ktw3C7/AIRiyxxo1JJJlrgDBHOJi2gm3BREIQlXpVokIQqVjQhCEIS7NRL3BjczgFZu5P1drfHyULRbiKrLsTeAE5Y4LZhjtZE9/muhhMOyqwl069FzcZiqlJ4DCIhZR2g62wHj5JuroSvsEa8QtgQ7akEHrLR6DS5rJ+oVuXZYtmjauwADISE6NGVYmBH6gtTVbiHXhAnt96YcSRfvtwyGPzKDgaXPup/UK3Lss8dFVup4jzXDout1D4LUhwIBvD671wgdb/alOBp8T8E48Rq8B2KzH2XW6hR9l1uoVpTTHW8G+S4aX5jwb8qX0Knz+Cn9Rqcvis19l1ep4hH2XV6nuWkufmPsjySoG7vCj0OnzR+oVeSzX2ZV6viEn7Mq9Ue03zWl7I4kLsHfx80eh00fqFXks2NG1Ng9pvmu/ZFT8ntBaNx7U2BOtAwlNHp9U8Fmzoh4MNuT+rAJdLRbzgC3DXe/hX9WjIOJG1RmMMkBxAEax8E/otPh8UnptXiOyrfsir+XiknRFXYOIVox5Loww7cSnZ3DxSnC0+HxTem1uI7KqZokxD2uM6gWRHFRxoW5/ptf2Og+Mq+vbjxKA79XiVHorOJ7qo1nGoKhALhMGNJ1hUlm0aZ/qtMbARj4rtt0TTcCKZc10GA6SCJE48OKvL2/3KFpGrdgnY4at2xU1sK1jS9pMhNUe7E/+N+h20Cw1rpvZVgiGgOAO3UQNnZwSKEQ0Q44R0SMtk9v1qVhaXCo8k+q09LYScPAe9RLS4NGDbo2gbe7DvQ18gNi652J8PptNSo10N4dNYMQGyIBdwPBPAOBwOA1Fowy1pmucSo9N5a6Ls4SJy/Vqk9qlPdeE3m9gBAHhCR7YWzwjE02YhzPLyk2PrEgmJsI1M7WUZcXUJF62FokIQqVjQhCEIT1hcBUYXCReGG1acWpv4T/AP8AP5llqHrt/U3/AHBaf6yXSwRhh6rk+IAZx0SxaWfhP4U/mSvSWfhu4M8013ngjv8ABbMx/AsEBOm1j8J/BnzJh9UQSGPAziRHgUv6yXcfr/CM5UZRwUf0xwghrzl+nsUgWyf/AK3Hvb5pl4u4gZ554BIpGNY6OsA4hTmJUQFMNf8AIf2+aQa//j8Wea42tOWKXf7OKWSmsm+e/wDH4s813nD+G7uc3zS+cXJGwfXcouhJvnqP/afeVy8eo79o/wCSeEbB9dy6B9fRUolMX3dR/Fp97kS4/cd33fgVJjt+u9H1mphEqMGO6h4tHxSK9neRg08WY8SpsfUroG4ePkpyhRKrX03YSxzYiTLeAgpxjCTFxw7buP7lMq05GAEzI+oTRZHSu4jVIIx1psgKXMU2bM/Uw/s+ZHM1OoeLPmUqi+cC0TnIiCE9d/KOAR5YR5hVcaFTqO4s+dQNI2MvAa5rmYOg9DPo44Ez3rRRuHBVPKCqGNacs9UbFRiqYFFxGsK2g9xqABYMWQt6J+6TrGev/MpFpN0fdGqTjBOWan2h95xO1RqrA4EESCuWKhJly6TPCadGiW0SQ6DBJJvG/wCfG4g43YcBIiC0QRv2lPl4LRjwbd27MEisCLgBwGBnacvGE6K5Ah3SG+CR2E/FWOMiVzcPhq1LEsc1hJYAHCRMO3BN3XkXM20URC6uKteustEhCFSsiEIQhClaLoX6rBMYz3tx+C05sj+sOB+ZZfRb2iq0umJxiZy3YrXMtNOMHN73SfFdXAhppmeP2XG8RLhUEcE0LM7W4dzT8Sg0Dt/b/KfNdnWakm0M6zfDzWzI1c+SmOZO39p+BKOZd1h7DvMJ/nmdZvh5oDhqPvPxRlCnMUxzLtx7o/5Jp9J8Q0N3mY+CmEn6aVwnsHEKCFMqJTpluAjsk/KnIf1R7R8k9PYe9JdhiQR2QlhSmS47B7R8knnDsHGfgk3zndcG/WKWWjWeIKUhSIXOcPVHH/1S+ed1Rx/hJnf4lBdtPu8lEqYCUK51gcXD4JQrHUB7R8kjnRu4pJeDs4gppKiE7zrtg4nySfSHbG+0R8ETsniPNcJO/h5IkqICV6S7qj2nfBqRUquOIaAf1OxGw9FcO+O8R70SNg4hTmKnKCkG1PaAABMz63m3JOULY+MQJ3uPyJGEzGP9vmiR1fcpzlLlCf8ATX9VvF3yqj5R13ua29EXsAJOr9I2KzgdXw/hVOnYgQ4YH1YE5HHaqa7iaZBWrCgCs0jiqNyaKdcmSuQvRptxTD089MPThM0DVNIQhSrFokIQqVjQhCEIUnRg/qtn6wVpprS1KzUjVqkQPVbIl7oJDRPYeyCVV6MaecEapKof+oGkDzzWNxu0a4Inogua2DvOQ45Lp4IS2I3XG8RID5JgRqfy6g6U09XrPmq402CrRHMtwljwXYuY6XYDEHY7BUj61VrA4Xm3KT4IdBA5y/DsQSfVwGd0pynZzJe/MGmOkIf/AKRDd0QCY/Mdi3uh+S9A0muqguc4A5kATkBC25gDx+Wm33WJrJZ/JoP9x5nhsItos1/3XaqLrnPX+brES8NuvYKQ6JcRPrE65wXoWidJUrTSbVZEEAkECWkiYPFYPT+gDZHtq0gXMNVxxJAa11EtukZesZkDWo+gNLOsdF5EOgUm4yBi8Nc4AZwDl2JbQEzWOMmwGwGwHEnUxr05r1AAao7sPcUqN7uL/NeV23TVpqte42h7Q19oDWtLg57T0W4MgANxiccu1OWDlLXs7odVNWTZ+i5zy249rnPguMtIAznZhiQjLZK4wSf4gSXbf50OnBeolh/Nx8ykPss5lw3CFQ6f045lkdaLKGvhrnS6SGwJxAMz24LE23lDaatQhlWpHPdG50XXeaxbAiRMmT5FAaTooc4NbmcY4cTyA1JXp9SzkCDVdd7Wz2YhO051vO7FmXsry/SXKes+nTAe5pFCzvZcc5pfULw15e7A4xlvOasNFcr64p1Q5t+reqGk983QxoJgxi6IGz1tykCRI/NFJs7L/I7amPp/kL0UD8xPseSCPzH9i8ltXKq1VSA2rUF42cgMN0gxLwA2JBJYDOGeeSf0hynrus9OnzlRn9CuLzXuFV1WnUFNpc7AjCcJzmUZSNR91AILi1pmNTt30nTuF6iaR67uDT8F00T1z7CxXJXlW4uey1FxaXDm3Ym70AXNJ+9t7+xVGmuWtasCLOXUmOpNIu/6jSakHpDEm6DlA7UBkmIUZxlzz6ux49JuZ25XXpJsx6476f8AKBZz1m+wfmXk1PStppkVH2isAXVyBzlQmQwuEiS0iTlEYDatdyb5T17VSfRJay0Cm25UPqOe5sGYwDrwcYGGCnKPz/ajOYE2JmBvHGIt71cae0xQsjS6tUbegltNo/qPjYC7xMBV+geUJr1KjKwZQudZxJxDXDG9GTtWxYXTtmqUKj2VnX6rqVcVXF7njpvBYQXYzdGXimKNnLnl1SYFZraky2pHNSMRqyw3ocAOnxPT7qWOcXZRc7gaNB3J0mIt/VrC9j9GJye3g75keiu67eD/AJlgdAcralmoFtUOqODQGlzy4AiQC4kExi2Y2FVdr5QWo1SXV6hqNqVmkNe9lKBTAZDQYHScNpzRlGm6cy27jA4n7RPHbZepejP1QfbHvCrOUFmeKYc8AQ4R0pOM4eqPfqWAsunbZSe2o60VHNpuszXB7nEPa5114gmDgCZMnHPALb6Q0pTtFC+y+OkBBLroOOBGUxiq6zW5HdPorMKXmo0kRf39tr/JUTk2U65MlcVenTT1HepD1HenCcJtCEJk60SEIVCxoQhCEKTotwFVl6Ls4zkqb/qTZQ2s2s1hc2rQrNi7LQ5rQGkSMCQR24xkrjRgmqyIm8InKVpNM6KFrouo1gCHDAgYtdBAc2TgRK62AE0z1+i4nicio0iJje432Xi7KZc4PqHDnKDS7I407oN1wyicfz7l6nyZ0nZa1CmRcvBgvNN0OwwvQcYyx3rz7S+ha9GvcryAX0gHj1S1rLl4Ane47iQqku6F1jfWo1GPwxfNaQQD+Vv7gthB4XtbYW5rDOW5JiT6x1cY2A202iZ0Xqmn9OWGk249rariYNNgY5wwkl2QbA2kKByktFioWcNZQpuvCnUAIALGVHXW1TLdWJA/KclhG2bpXngH+o4lpgyDTgOvA4m8eDQptv0RXdTFpIc6mSxhOButbUBDi3W2XHsg5ItNlIzgZnCx0bvfjsOY2uoReTfLA2G8+C50YtHRYWjb6xndkmWUwxwvYkPsxDAQ5paRjmMw1g9nelAxNNgE37SHPIi9BApniZ7igUA13TxDalnBbg6831Zlp1BuX6tqj+PL4m/59VDgXOkgFw/sb9yLe8GIWp5PH/4lsN0gCk9wAyaebfqn4LLOeGvilJi0S2pdDnFvMQW9ESde5TrJba7LNVo0qcmo194AXnc2C43Y1m64DCcAobnCnU6OLm2ib5F0FhoRGG8lEDTXl901RzsxdZsC7ove5DRrfX3BTNA6AdaWHm82MYYwIfBkNM6s+KtLBybrXy99M02tvPMggTi4gCVzkBpAUH3axutdSZdcTMuk4EtOHYdy2HK2paBZnCzNvl0tddILmsLHSWg5nId/eAzOqnPlaXBpE8r6R3XkzHgAFkudNkc15AJDgC5zYAnEkCB1oVroTQhtd5jXQ65UJyEy4yIIwkknvVe5oYcBLwbK4OuxdiXPbuyA24jYrjkZb+ZrB1WAxzakuOMO5wZxkD0tWUKYtI5XOp/wkH/zcB/SBLW8yeP0I97ekNC12OaXUubDqoHVZe5s5ROqn4Knp1GhggX5o0iSQ0827nsQIE5A5dVewaQsrLVSLJiYc0g4tcMWuGX8gleV6T0Y6yk06gl4pUwx0ENa4VRkRqjHjtStMwOY/CeyZ8l+cATxOgHIcTcaakKdb9HUxZ6NZznNLnV2uIjMUy5ogg/h/BVNK0OBFwXOjZpAEdJrSL0jAYk54m4pJr1KouudFPnK7m4NLLxbgIzGENk7XDWl2Og5xDKTSC9tIFmfTY0gme1x4IkAQdflf5pmB1Rxe31WnePWcNujY7gpzlNahUcKjgHOfY6gfgIa6QA/LA9E/BRaYcTUquj12tMyDIptjokYYa960HKfky9lIVA2+G2d9NwGbKhILXiNWLgdkBZ1odUqXnGA+q0FwgtaRQj1Z2a9pCBpPx+ghKSc4Gt7Nbb/AJOOmv8A2W/0hoOzvspa7mqZexoDzDekYIBJ1E4HcSsJa7I6hUu1WEvD7RLDdLYNOQ9pIxBc/P8AMRmFKFoc+y+jta91WoWF2MyQelEk4uHuC7aLe7m+btLBUcH1W9IHnKYawuAvA9IXjAJyw2IGkdep/OqZ7PWncCQT+0X66/SVH0VbLrC2q1j6UWZpcW3ajL/QFRmAJyvGTBla2z2DmaPRqCo2o4OBAIiAY17ysKwOfEmYbZ2kggiKYImPvH1j3tWo0I5/NEGbt/DtjH4KvE2pnp9ldgTmqNiSJ1O/QbAfdTHJop1yZK4q9KmnqO9SHqO9OE4TaEITJ1okIQqFjQkPeBid3j/g8EpRbZVGLHfeGBiRP0AnY3MYXP8AEsWcNSztidhx4jsptIgOaTlInskStH6LT6g4BYlz3l9KmASTF6JmGeuTBEQdcjtGa3bRAAh2AA9V2rsC34VkNusFfFedVIaIDYHU6/VRbRoyjUF19JpHYFUVeRtmJkX27hB960Qx1O9l/kh2Akh3B3ktSqzEKmsXJiy08ebvHa+D4ZK09EpxduNgiIgRGxOMqAielwclB2wO4P8AJT1RJKz1XkdZnOkF4GwHD3J+vyUsjmBgZdj7w9bvJzV3O53eHD3oL26yOKhTndxVVozk9ZqIN1ocSIJdBMbNyh1uRllJkFzdwLT7wtFfb1hxCTfb1hxCEBzhxWfoci7K0gkudBmDdjvgK/8ARqfVZ7ISr7esPaC6HDrDiPNEqC4nVZ+0cjbM4ktJbOMA4eMpociKAx6TxrE5juatJzresOI80sVGbR71IKkvfxUOjY2NbPNNhuDZEGOCTadF0K7YqUmxqOTh2EDBTHlhjpNjZhiltewZOaO8JrJJKzn/AGRZpm86Nkj3wrfR2hbPQEU2MnWSAXHvKl1LWxubxxShaafXb7SYQgucUo0GHAtp+yFRWvkXZXuvDoTqbEdwOSvBaqfXZ7QSvSafXZ7QU2US4aKu0Xycs1DFjGl3WcA4/wAJq3ckrLWeajmwTndEAnbCt/SqfWZ7TfNHplLrN9pvmpslzOmbrOt5B2WZJcRsgJfKDRtKjSpiixrACR0WxOGvatD6ZS67eKoeVFrY5rWsMwTrkat6pxUeS5asIXmuyZ1WacmSnnJkriL0qaeo71Ieo704ThNoQhMnWiQhcKoWNN13uaJAB3a9eW1VrWc45zSejExsJwMe9SrcwAfeE62gnw/wq6xgl169JAMTIMjKZ3HwWmm31SV47GVDVxfl1AbH9pIiDzBE3ggHpPCWbdAe5hxu3cM8iHTskH3r0LQT3Os9Jz8HFjTjniMCcsSMT2rz3RlmFYktwe8ObGABjUDrOEY79S2+jre6o2C5zXtgPYQ0Fp4ZHUVvwxDJUML6lQPeRdto0Nye8bG8cYVy5v1j5qFUomQ4jAHIAmBtXOcf1j4eSS+q4CS8gf2/ELSagWrInGtgl0ECIyMngn+PFypjpFoMmp0jlN2AOCl0LWCBFQO7ifcUoqNOik03N1UzDZ4Lkjd7vCE0Kp3H2x5o512zxPxajMEQnDG3xCI3A/XemzUds+PwC4SeoDwHxUWRCHNOzgmy07OIKXJ/CPc5vmiT1XD+5nzJdU0pOH0c+5BjUP8Ab5ylAHY/i3zXSw7HeCiFMrl0bY7/ADSXO2G9uzKCD1X8GrmPVf7IUwo96aiDLxmMIyG5Ko4ZyJJujPBD3kDBjvYPwTF+DAm8cyWPAClEKXO/wIXO/wB/muNfsng7yK4SdhP9rvlUQpCVdO1BB2/XFNEflPsO+RE7j7Lh/wAUISzPWHj5qn0883QMT0pmMMjrlWnON1wO8j3qr064FouvkXsWy06jBwx2qut+w9Fow3/tb1VE5NlOuTRXJC9EmXqO9SHqO9OE4TaEITJ1okhzZEZJaAqFz61MVGFh3UKhWJLmuE4TO6YUVlOmCCKhjI7NeBH1lKmVqDyZDyDuDfE61XWk9It9YmL3RMkbSQeGC1UxM5V5Cu+oAzzmk5SRLpaTva8uEWPLqQbmwWc3sCHA4lr8GnfIxB34pzSYqsLXXg0t9UmqHkDYHFocRudIVRoioZLG1C0MEw0CekTPSM+G1XNkqinixgnrGXO9omU2bJLSfh+fNaThXY+m2pRGUc3TobxqbGYu3oFIsemK8dJgeNrbwPg0g+CtLNaeemRAaRIO3gq77XqbvHzUqw6SvEh8DAQccYOWKqxFaaZDXE+77LTTwGJo+s50gdP9p99kbsGWxUzrKWmBg7URhGvNaF9USmLQGkYmDtXOZUIWplRwVbZ6tdhu3519ITPfn4qWNLuaYqUz2tcfcfNM1qzRHSxOJOvsATfpLMZcDkJ7VrbiqovKcNa/9zO1vkriy2unU9QtO7G8O0HFSgT9ArO1adN2sHZkhlRzPVqYbHdIeOXctbPEG/yCrdg5/ae4+q0Un6j4pWP1HkqEaY2s4Ee4tTg0y3qu4+ULUMTTO6pOEreyrq79YeSA3s8PJU4003qu4j4ynRpmn+fgPgUwxFPiFHotb2SrWD9Eox+ifNVY0zT2n2T5pf2zT637XJvOp+0O6XyKvsnsrGTsPH+U3WZgYBnv8lC+2afW/a5d+2qXW/a5N5zOIS+RU9k9lJc/UzA6zgO7FO0KwiMRGGbVWO0rTmWvjb0HJtum6YmHxjmWOxPwTecz2go8ip7J7K85zeeLEc4Np4t81V0tN0iJL/2vTo01S/EHsvR5zPaHcKPIqeyex+ync43/AC4eaqeUrzzUANu3m4hwnhGXepP2zS/EHB/kqrT1up1GdBwLpExfxGOoiM4S1ajTTdcaK3D0Xiq2WnUbH7LPuTRTjk2VxV6UJl6jvUh6jvThWBNoQhMnWiQhCoWNJhV9ayamNgn7xz7d5xPZHYrJCZri0yFjxeBpYmPM+Hy6KBYNGtpG8MyCO4kEe4KehCHOLjJV9ChToMyUxAQhCEquReO0rpcuIRCiEh7QU1UM56sx8VISXMBzCkGFBCS10DE/4TiZNMkycNieQVIXF1CFCEIQhCEIQhCEIQhClCbczXjvG1OIQoUY54a8vJOA7V0sGcJptMzOHYpMFQE4UgpZSChWBIcmSnnJoqU6Zeo71Ieo704ThNoQhMnWiQhCoWNCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhCSlJKFKQUkpRSSpTBNuTJTzk0VKdMvUd6kPUd6cJwm0IQmTrRIQhULGhCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhJQhClIKQUIUpgkOTRQhSnTL1HehCcJwm0IQmTr/2Q==",),

              ),
            ),
          ),
          Container(
           // width: 100,height: 50,
          //decoration: BoxDecoration(
          //  border: Border.all(color: Colors.transparent,width: 2),
         // ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [Icon(Icons.timer),Text("30 min policy")],),
            ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [Icon(Icons.timer),Text("30 min policy")]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [Icon(Icons.timer),Text("30 min policy")]),
                ),
              ],
            ),
          ),
          ),
          Container(
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(image: Imagelist[index])
                ],
              ),
            )
           ),
       ],
      ),
    ) )),
  ],
))

     );

  }
}
