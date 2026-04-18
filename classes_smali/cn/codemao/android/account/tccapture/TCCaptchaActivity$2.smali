.class Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;
.super Ljava/lang/Object;
.source "TCCaptchaActivity.java"

# interfaces
.implements Lcn/codemao/android/account/tccapture/TcJsBridgeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->initCaptchaView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;


# direct methods
.method public static synthetic $r8$lambda$QibXrr2UMvttpR-6A8Im_aq4uxc(Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->lambda$onReady$0(II)V

    return-void
.end method

.method constructor <init>(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReady$0(II)V
    .registers 5

    .line 124
    :try_start_0
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {v0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$000(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/codemao/android/onekeylogin/utils/QLScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {v0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$400(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 125
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {v0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$000(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 126
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    iget-object v1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {v1}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$000(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p2, p2

    invoke-static {v1, p2}, Lcn/codemao/android/onekeylogin/utils/QLScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iget-object v1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {v1}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$500(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    iget-object p2, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {p2}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$000(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object p2, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {p2}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$000(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Landroid/webkit/WebView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 130
    iget-object p2, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {p2}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$600(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_82

    .line 131
    iget-object p2, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {p2}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$600(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    div-int/lit8 p1, p1, 0x2

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 133
    iget-object p1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {p1}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$600(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object p1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {p1}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$600(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7d} :catch_7e

    goto :goto_82

    :catch_7e
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_82
    :goto_82
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 157
    iget-object p1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$102(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 158
    iget-object p1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {p1}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$300(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 159
    iget-object p1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {p1}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$300(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p1

    const-string v0, "ND_2"

    invoke-interface {p1, v0, p2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1a
    iget-object p1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onReady(II)V
    .registers 5

    .line 121
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {v0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$000(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 122
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {v0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$000(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 147
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$102(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 148
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {v0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$200(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 149
    new-instance v0, Lcn/codemao/android/account/bean/TencentCaptchaVO;

    invoke-static {}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->getInstance()Lcn/codemao/android/account/tccapture/TcCaptchaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcn/codemao/android/account/bean/TencentCaptchaVO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-static {p1}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->access$200(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/codemao/android/account/listener/NetSuccessResultListener;->onSuccess(Ljava/lang/Object;)V

    .line 152
    :cond_25
    iget-object p1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
