.class public Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "FullScreenWechatPop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;
    }
.end annotation


# instance fields
.field ivClose:Landroid/widget/ImageView;

.field private ivNotice:Landroid/widget/ImageView;

.field private loginResultListener:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;

.field mIvQrCode:Landroid/widget/ImageView;

.field private tvNotice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;)V
    .registers 4

    .line 37
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p3, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->loginResultListener:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Landroid/widget/ImageView;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->ivNotice:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Landroid/widget/TextView;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->tvNotice:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->loginResultListener:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;

    return-object p0
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    const v0, 0x7f0d0135

    return v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 44
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    const v0, 0x7f0a034e

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->mIvQrCode:Landroid/widget/ImageView;

    const v0, 0x7f0a016a

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->ivClose:Landroid/widget/ImageView;

    const v0, 0x7f0a039e

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->ivNotice:Landroid/widget/ImageView;

    const v0, 0x7f0a0845

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->tvNotice:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$1;-><init>(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->mIvQrCode:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$2;-><init>(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->loginByCode()V

    return-void
.end method

.method public loginByCode()V
    .registers 4

    .line 79
    new-instance v0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$3;-><init>(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)V

    new-instance v1, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$4;-><init>(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)V

    new-instance v2, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$5;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$5;-><init>(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)V

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/CodeMaoAccount;->loginByWechatCode(Lcn/codemao/android/account/listener/WechatCodeListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method protected onShow()V
    .registers 1

    .line 68
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    return-void
.end method
