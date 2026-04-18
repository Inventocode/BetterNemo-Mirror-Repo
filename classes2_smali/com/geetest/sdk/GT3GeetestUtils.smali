.class public Lcom/geetest/sdk/GT3GeetestUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/sdk/NoProguard;


# instance fields
.field private a:Lcom/geetest/sdk/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/geetest/sdk/b;

    invoke-direct {v0, p1}, Lcom/geetest/sdk/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->a:Lcom/geetest/sdk/b;

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "4.4.1"

    return-object v0
.end method


# virtual methods
.method public changeDialogLayout()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->a:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->a()V

    return-void
.end method

.method public destory()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->a:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->b()V

    return-void
.end method

.method public dismissGeetestDialog()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->a:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->c()V

    return-void
.end method

.method public getGeetest()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->a:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->e()V

    return-void
.end method

.method public getHolder()Lcom/geetest/sdk/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->a:Lcom/geetest/sdk/b;

    return-object v0
.end method

.method public init(Lcom/geetest/sdk/GT3ConfigBean;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->a:Lcom/geetest/sdk/b;

    invoke-virtual {v0, p1}, Lcom/geetest/sdk/b;->a(Lcom/geetest/sdk/GT3ConfigBean;)V

    return-void
.end method

.method public showFailedDialog()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->a:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->f()V

    return-void
.end method

.method public showSuccessDialog()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->a:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->g()V

    return-void
.end method

.method public startCustomFlow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->a:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->h()V

    return-void
.end method
