.class public final Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "MainNewWorkActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->commonStep2InitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    .line 81
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 5

    .line 84
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 85
    sget-object v0, Lcom/ljwx/baseapp/util/LocalEventUtils;->INSTANCE:Lcom/ljwx/baseapp/util/LocalEventUtils;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mine_tab_change"

    invoke-virtual {v0, v2, v1}, Lcom/ljwx/baseapp/util/LocalEventUtils;->sendAction(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p1, :cond_42

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    goto :goto_6e

    .line 91
    :cond_15
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->access$getTopContainer(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 92
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->access$getTopAnimaView(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const-string v0, "mine_top_bg_page2.json"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->access$getTopWorkDesc(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "Nemo仅支持手机端"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e

    .line 87
    :cond_42
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->access$getTopContainer(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 88
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->access$getTopAnimaView(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const-string v0, "mine_top_bg_page1.json"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->access$getTopWorkDesc(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "KittenN作品支持三端通用"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_6e
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->access$getFirstChange$p(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Z

    move-result p1

    if-nez p1, :cond_7f

    .line 96
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->access$getTopAnimaView(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 98
    :cond_7f
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->access$setFirstChange$p(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;Z)V

    return-void
.end method
