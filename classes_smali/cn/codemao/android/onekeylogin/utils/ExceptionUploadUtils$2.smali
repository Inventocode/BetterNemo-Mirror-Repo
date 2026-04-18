.class Lcn/codemao/android/onekeylogin/utils/ExceptionUploadUtils$2;
.super Ljava/lang/Object;
.source "ExceptionUploadUtils.java"

# interfaces
.implements Lcn/codemao/android/account/listener/NetFailResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/onekeylogin/utils/ExceptionUploadUtils;->uploadErr(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p1, ""

    .line 43
    invoke-static {p1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
