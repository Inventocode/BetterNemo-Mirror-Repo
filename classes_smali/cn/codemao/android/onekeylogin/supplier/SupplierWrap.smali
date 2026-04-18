.class public abstract Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;
.super Ljava/lang/Object;
.source "SupplierWrap.java"


# instance fields
.field private isInitSuccess:Z

.field private preLoginSuccess:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract closeAuthPage()V
.end method

.method public abstract configSupplierName()Ljava/lang/String;
.end method

.method public abstract configUi(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getPhoneInfo(Landroid/content/Context;Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;)V
.end method

.method public abstract init(Landroid/content/Context;Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;)V
.end method

.method public isInitSuccess()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->isInitSuccess:Z

    return v0
.end method

.method public isPreLoginSuccess()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->preLoginSuccess:Z

    return v0
.end method

.method public abstract onDestroy()V
.end method

.method public abstract openLoginAuth(Landroid/content/Context;Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;)V
.end method

.method public abstract setDebug(Z)V
.end method

.method public setInitState(Z)V
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->isInitSuccess:Z

    return-void
.end method

.method public setPreLoginState(Z)V
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->preLoginSuccess:Z

    return-void
.end method
