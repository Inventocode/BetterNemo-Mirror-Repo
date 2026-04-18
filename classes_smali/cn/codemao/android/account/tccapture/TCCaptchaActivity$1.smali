.class Lcn/codemao/android/account/tccapture/TCCaptchaActivity$1;
.super Landroid/webkit/WebViewClient;
.source "TCCaptchaActivity.java"


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
.method constructor <init>(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$1;->this$0:Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 112
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
