<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CoreMarket._Default" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link rel="stylesheet" href="Content/Home.css" />
    </head>
    <body>
        <div id="carouselExampleIndicators" class="carousel slide mb-4">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Images/Cikolata.jpg" class="d-block w-100" alt="Fotoğraf bulunamadı.">
                </div>
                <div class="carousel-item">
                    <img src="Images/Soda.jpg" class="d-block w-100" alt="Fotoğraf bulunamadı.">
                </div>
                <div class="carousel-item">
                    <img src="Images/Cips.jpg" class="d-block w-100" alt="Fotoğraf bulunamadı.">
                </div>
                <div class="carousel-item">
                    <img src="Images/Dondurma.jpg" class="d-block w-100" alt="Fotoğraf bulunamadı.">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <div class="row row-cols-1 row-cols-md-2 g-4">
            <div class="col">
                <div class="card mt-4">
                    <img src="Images/Dondurma.jpg" class="card-img-top" alt="Fotoğraf Bulunamadı.">
                    <div class="card-body">
                        <h5 class="card-title">Dondurma</h5>
                        <p class="card-text">Dondurma, süt, şeker ve çeşitli lezzetlendiricilerin karışımının dondurularak yapılan tatlı bir atıştırmalıktır. Antik çağlardan günümüze kadar evrimleşen dondurma, farklı kültürlerde gelişmiş ve popüler hale gelmiştir. İçeriği genellikle süt ürünleri, şeker ve çeşitli tatlandırıcılar içerir. Dondurma, çeşitli lezzetlerle zenginleştirilerek üretilir ve geniş bir tüketici kitlesine hitap eder. Yıl boyunca tercih edilen bu serin tatlı, sıcak hava günlerinde özellikle popülerdir.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card mt-4">
                    <img src="Images/Soda.jpg" class="card-img-top" alt="Fotoğraf Bulunamadı.">
                    <div class="card-body">
                        <h5 class="card-title">Meyve Suyu</h5>
                        <p class="card-text">Meyve suyu, meyvelerin sıkılması veya ezilmesiyle elde edilen bir içecektir. Doğal meyve aromalarını ve tatlarını içerir, taze veya konsantre meyve suları kullanılarak yapılabilir. Besleyici ve vitamin açısından zengin olan meyve suları, genellikle serinletici bir içecek olarak tercih edilir. Ticari meyve suları bazen şeker veya koruyucu maddeler içerebilir. Sağlıklı bir içecek alternatifi olarak kahvaltıda veya gün içinde sıkça tüketilir.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card mt-4">
                    <img src="Images/Cikolata.jpg" class="card-img-top" alt="Fotoğraf Bulunamadı.">
                    <div class="card-body">
                        <h5 class="card-title">Çikolata</h5>
                        <p class="card-text">Çikolata, kakao çekirdekleri, kakao yağı ve şekerin karışımından yapılan bir tatlıdır. Antik Maya ve Aztek kültürlerinden günümüze evrimleşmiştir. Günümüzde sütlü, bitter, beyaz ve çeşitli içeriklere sahip farklı türleri bulunur. Sevilen bir lezzet olan çikolata, atıştırmalıklardan içeceklere kadar çeşitli şekillerde tüketilir ve içerdiği maddeler nedeniyle insanların ruh halini iyileştirebilir.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card mt-4">
                    <img src="Images/Cips.jpg" class="card-img-top" alt="Fotoğraf Bulunamadı.">
                    <div class="card-body">
                        <h5 class="card-title">Cips</h5>
                        <p class="card-text">Cips, ince dilimlenmiş patateslerin kızartılması veya fırınlanmasıyla yapılan popüler bir atıştırmalıktır. İlk kez 19. yüzyılda Amerika'da keşfedildi ve zamanla endüstriyel üretimle geniş bir popülerlik kazandı. Çeşitli lezzetlerde üretilen patates cipsi, evde, partilerde veya günlük yaşamda sıkça tüketilen bir atıştırmalıktır.</p>
                    </div>
                </div>
            </div>
        </div>

    </body>
    </html>
</asp:Content>
