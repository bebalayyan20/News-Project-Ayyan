<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="LatestNews.aspx.cs" Inherits="NewsAF.LatestNews" %>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image1" runat="server" Height="450px" ImageUrl="~/images1/20220408_121515.jpg" Width="650px" ImageAlign="AbsMiddle" style="margin-left: 141px" />
    
  
  <section id="newsSection">
    <div class="row">
      <div class="col-lg-12 col-md-12">
        <div class="latest_newsarea"> <span>Latest News</span>
          <ul id="ticker01" class="news_sticker">
            <li><a href="LatestNews.aspx"><img src="images/news_thumbnail3.jpg" alt="">Convocation 2019 Batch</a></li>
            <li><a href="LatestNews.aspx"><img src="images/news_thumbnail3.jpg" alt="">GS Election</a></li>
            <li><a href="LatestNews.aspx"><img src="images/news_thumbnail3.jpg" alt="">NSS Camp</a></li>
            <li><a href="BSCCS.aspx"><img src="images/news_thumbnail3.jpg" alt="">Udaan Winners</a></li>
            <li><a href="BSCIT.aspx"><img src="images/news_thumbnail3.jpg" alt="">TCSL Selection</a></li>
            <li><a href="BCOM.aspx"><img src="images/news_thumbnail3.jpg" alt="">Company Secretary Selection</a></li>
          </ul>
          <div class="social_area">
            <ul class="social_nav">
              <li class="facebook"><a href="https://www.facebook.com/ayyan.bebal"></a></li>
              <li class="flickr"><a href="https://www.instagram.com/ayan_bebal/?hl=pt"></a></li>
              <li class="youtube"><a href="https://www.youtube.com/channel/UC9JGWInONcSzqNAib5G5W3w"></a></li>
              <li class="mail"><a href="mailto:bebalayyan20@gmail.com"></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section id="sliderSection">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8">
        <div class="slick_slider">
          <div class="single_iteam"> <a href="LatestNews.aspx"> <img src="images1/convocation_640x368.jpg" alt=""></a>
            <div class="slider_article">
              <h2><a class="slider_tittle" href="LatestNews.aspx">Convocation 2019 Batch</a></h2>
              <p>Convocation of 2019-20 batch ,which was delayed due to covid was organised in presence of Chief guest Yogesh Kadam (MLA)</p>
            </div>
          </div>
          <div class="single_iteam"> <a href="LatestNews.aspx"> <img src="images1/gs_640x480.jpg" alt=""></a>
            <div class="slider_article">
              <h2><a class="slider_tittle" href="LatestNews.aspx">General Seceratory Election</a></h2>
              <p>General Secretory2021-22 Ayyan Bebal was elected as GS of Dnyandeep College</p>
            </div>
          </div>
          <div class="single_iteam"> <a href="LatestNews.aspx"> <img src="images1/nss_640x480.jpg" alt=""></a>
            <div class="slider_article">
              <h2><a class="slider_tittle" href="LatestNews.aspx">NSS Camp 2021-22</a></h2>
              <p>NSS Camp 2021-22To Nigade Village</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4">
        <div class="latest_post">
          <h2 style="left: 0px; top: 0px"><span>Latest Post</span></h2>
          <div class="latest_post_container">
            <div id="prev-button"><i class="fa fa-chevron-up"></i></div>
            <ul class="latest_postnav">
              <li>
                <div class="media"> <a href="LatestNews.aspx" class="media-left"> <img alt="" src="images1/convocation_640x368.jpg"> </a>
                  <div class="media-body"> <a href="LatestNews.aspx" class="catg_title"> Convocation 2019-20 Batch</a> </div>
                </div>
              </li>
              <li>
                <div class="media"> <a href="LatestNews.aspx" class="media-left"> <img alt="" src="images1/gs_640x480.jpg"> </a>
                  <div class="media-body"> <a href="LatestNews.aspx" class="catg_title"> General Seceratory Election 2021-22</a> </div>
                </div>
              </li>
              <li>
                <div class="media"> <a href="LatestNews.aspx" class="media-left"> <img alt="" src="images1/nss_640x480.jpg"> </a>
                  <div class="media-body"> <a href="LatestNews.aspx" class="catg_title"> NSS Camp 2021-22 at Nigade,Boraj</a> </div>
                </div>
              </li>
              <li>
                <div class="media"> <a href="BSCCS.aspx" class="media-left"> <img alt="" src="images1/cs_339x480.jpg"> </a>
                  <div class="media-body"> <a href="BSCCS.aspx" class="catg_title"> Udaan Festival Winner's</a> </div>
                </div>
              </li>
              <li>
                <div class="media"> <a href="BSCIT.aspx" class="media-left"> <img alt="" src="images1/IT_339x480.jpg"> </a>
                  <div class="media-body"> <a href="BSCIT.aspx" class="catg_title"> Campus Interview TCSL</a> </div>
                </div>
              </li>
            </ul>
            <div id="next-button"><i class="fa  fa-chevron-down"></i></div>
          </div>
        </div>
      </div>
    </div>
  </section>
          <div class="single_post_content">
            <h2 style="left: 0px; top: 0px; width: 942px"><span>Photographs</span></h2>
            <ul class="photograph_nav  wow fadeInDown">
              <li>
                <div class="photo_grid">
                  <figure class="effect-layla"> <a class="fancybox-buttons" data-fancybox-group="button" href="images1/convocation_640x368.jpg" title="Convocation 2019 Batch "> <img src="images1/convocation_640x368.jpg" alt=""/></a> </figure>
                </div>
              </li>
              <li>
                <div class="photo_grid">
                  <figure class="effect-layla"> <a class="fancybox-buttons" data-fancybox-group="button" href="images1/cs_339x480.jpg" title="Udaan Festival 2021-22"> <img src="images1/cs_339x480.jpg" alt=""/> </a> </figure>
                </div>
              </li>
              <li>
                <div class="photo_grid">
                  <figure class="effect-layla"> <a class="fancybox-buttons" data-fancybox-group="button" href="images1/nss_640x480.jpg" title="NSS Camp 2021-22"> <img src="images1/nss_640x480.jpg" alt=""/> </a> </figure>
                </div>
              </li>
              <li>
                <div class="photo_grid">
                  <figure class="effect-layla"> <a class="fancybox-buttons" data-fancybox-group="button" href="images1/gs_640x480.jpg" title="General Seceratory 2021-22"> <img src="images1/gs_640x480.jpg" alt=""/> </a> </figure>
                </div>
              </li>
              <li>
                  <div class="photo_grid">
                  <figure class="effect-layla"> <a class="fancybox-buttons" data-fancybox-group="button" href="images1/dnyandeep.jpg" title="Dnyandeep Campus"> <img src="images1/dnyandeep.jpg" alt=""/> </a> </figure>
                </div>
              </li>
              <li>
                <div class="photo_grid">
                  <figure class="effect-layla"> <a class="fancybox-buttons" data-fancybox-group="button" href="images1/IT_339x480.jpg" title="Campus Placement"> <img src="images1/IT_339x480.jpg" alt=""/> </a> </figure>
                </div>
              </li>
            </ul>
          </div>
    </div>
  </section>
</asp:Content>
