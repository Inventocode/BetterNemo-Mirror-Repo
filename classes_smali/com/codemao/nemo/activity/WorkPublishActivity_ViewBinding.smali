.class public Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WorkPublishActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/view/View;)V
    .registers 7

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a07c2

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->toolbar:Landroid/widget/RelativeLayout;

    .line 48
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0679

    const-string v2, "field \'rlRoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlRoot:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a062d

    const-string v1, "field \'rlContent\' and method \'showKeyBoard\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "field \'rlContent\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a08b2

    const-string v1, "field \'tvPublish\' and method \'publishWork\'"

    .line 58
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 59
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvPublish\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvPublish:Landroid/widget/TextView;

    .line 61
    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0364

    const-string v1, "field \'ivExit\' and method \'back\'"

    .line 67
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 68
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivExit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivExit:Landroid/widget/ImageView;

    .line 70
    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0447

    const-string v1, "field \'ivCover\' and method \'ShowCoverEdit\'"

    .line 76
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 77
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivCover\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivCover:Landroid/widget/ImageView;

    .line 79
    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03ea

    const-string v1, "field \'tvOpenSource\' and method \'changeOpenSouce\'"

    .line 85
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 86
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'tvOpenSource\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvOpenSource:Landroid/widget/ImageView;

    .line 88
    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0599

    const-string v2, "field \'rgOpenSource\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->rgOpenSource:Landroid/view/ViewGroup;

    .line 95
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0a0596

    const-string v2, "field \'ivOpenSource\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivOpenSource:Lcom/airbnb/lottie/LottieAnimationView;

    .line 96
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0a0592

    const-string v2, "field \'ivOpenFans\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivOpenFans:Lcom/airbnb/lottie/LottieAnimationView;

    .line 97
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0a016f

    const-string v2, "field \'ivCloseSource\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->ivCloseSource:Lcom/airbnb/lottie/LottieAnimationView;

    .line 98
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0598

    const-string v2, "field \'openSourceFlag\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->openSourceFlag:Landroid/widget/ImageView;

    .line 99
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a022a

    const-string v2, "field \'etDes\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    .line 100
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a022b

    const-string v2, "field \'etName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    .line 101
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a022c

    const-string v2, "field \'etOperation\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOperation:Landroid/widget/EditText;

    .line 102
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a059b

    const-string v2, "field \'opreationContaner\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->opreationContaner:Landroid/view/ViewGroup;

    .line 103
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0867

    const-string v2, "field \'tvAllowNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvAllowNum:Landroid/widget/TextView;

    .line 104
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0626

    const-string v2, "field \'rlAllowNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    .line 105
    const-class v0, Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const v1, 0x7f0a06c9

    const-string v2, "field \'scrollView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    .line 106
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08fa

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a082a

    const-string v1, "method \'ShowCoverEdit\'"

    .line 107
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 109
    new-instance v0, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$6;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
