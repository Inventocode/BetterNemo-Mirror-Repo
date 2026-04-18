.class Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;
.super Ljava/lang/Object;
.source "NextDataCaptchaActivity.java"

# interfaces
.implements Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;


# direct methods
.method constructor <init>(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;->this$0:Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;->this$0:Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;

    invoke-static {v0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->access$010(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;)I

    .line 106
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;->this$0:Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;

    invoke-static {v0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->access$000(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;)I

    move-result v0

    if-gtz v0, :cond_1b

    .line 107
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;->this$0:Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->access$102(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    iget-object p1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;->this$0:Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1b
    return-void
.end method

.method public onReady()V
    .registers 1

    return-void
.end method

.method public onSuccess(Ljava/lang/CharSequence;Z)V
    .registers 4

    if-eqz p2, :cond_11

    .line 117
    iget-object p2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;->this$0:Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->access$202(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object p1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;->this$0:Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_33

    .line 121
    :cond_11
    iget-object p2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;->this$0:Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;

    invoke-static {p2}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->access$010(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;)I

    .line 122
    iget-object p2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;->this$0:Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;

    invoke-static {p2}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->access$000(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;)I

    move-result p2

    if-gtz p2, :cond_33

    .line 123
    iget-object p2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;->this$0:Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;

    const-string v0, "ND_2"

    invoke-static {p2, v0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->access$102(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object p2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;->this$0:Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->access$302(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    iget-object p1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;->this$0:Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_33
    :goto_33
    return-void
.end method
