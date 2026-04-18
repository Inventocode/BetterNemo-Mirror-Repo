.class Lcom/codemao/nemo/view/banner/Banner$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/banner/Banner;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/banner/Banner;)V
    .registers 2

    .line 491
    iput-object p1, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 494
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v0}, Lcom/codemao/nemo/view/banner/Banner;->access$000(Lcom/codemao/nemo/view/banner/Banner;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_70

    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v0}, Lcom/codemao/nemo/view/banner/Banner;->access$100(Lcom/codemao/nemo/view/banner/Banner;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 495
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v0}, Lcom/codemao/nemo/view/banner/Banner;->access$200(Lcom/codemao/nemo/view/banner/Banner;)I

    move-result v2

    iget-object v3, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v3}, Lcom/codemao/nemo/view/banner/Banner;->access$000(Lcom/codemao/nemo/view/banner/Banner;)I

    move-result v3

    add-int/2addr v3, v1

    rem-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/codemao/nemo/view/banner/Banner;->access$202(Lcom/codemao/nemo/view/banner/Banner;I)I

    .line 497
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v0}, Lcom/codemao/nemo/view/banner/Banner;->access$200(Lcom/codemao/nemo/view/banner/Banner;)I

    move-result v0

    if-ne v0, v1, :cond_4b

    .line 498
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v0}, Lcom/codemao/nemo/view/banner/Banner;->access$300(Lcom/codemao/nemo/view/banner/Banner;)Lcom/codemao/nemo/view/banner/view/BannerViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v1}, Lcom/codemao/nemo/view/banner/Banner;->access$200(Lcom/codemao/nemo/view/banner/Banner;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 499
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v0}, Lcom/codemao/nemo/view/banner/Banner;->access$500(Lcom/codemao/nemo/view/banner/Banner;)Lcom/codemao/nemo/view/banner/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v1}, Lcom/codemao/nemo/view/banner/Banner;->access$400(Lcom/codemao/nemo/view/banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/banner/WeakHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_70

    .line 501
    :cond_4b
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v0}, Lcom/codemao/nemo/view/banner/Banner;->access$300(Lcom/codemao/nemo/view/banner/Banner;)Lcom/codemao/nemo/view/banner/view/BannerViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v1}, Lcom/codemao/nemo/view/banner/Banner;->access$200(Lcom/codemao/nemo/view/banner/Banner;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 502
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v0}, Lcom/codemao/nemo/view/banner/Banner;->access$500(Lcom/codemao/nemo/view/banner/Banner;)Lcom/codemao/nemo/view/banner/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v1}, Lcom/codemao/nemo/view/banner/Banner;->access$400(Lcom/codemao/nemo/view/banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/view/banner/Banner$1;->this$0:Lcom/codemao/nemo/view/banner/Banner;

    invoke-static {v2}, Lcom/codemao/nemo/view/banner/Banner;->access$600(Lcom/codemao/nemo/view/banner/Banner;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/view/banner/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_70
    :goto_70
    return-void
.end method
