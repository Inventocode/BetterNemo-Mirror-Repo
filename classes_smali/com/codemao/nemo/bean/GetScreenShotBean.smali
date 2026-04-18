.class public Lcom/codemao/nemo/bean/GetScreenShotBean;
.super Ljava/lang/Object;
.source "GetScreenShotBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private screenshot:Ljava/lang/String;

.field private status:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenshot()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/nemo/bean/GetScreenShotBean;->screenshot:Ljava/lang/String;

    return-object v0
.end method

.method public isStatus()Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/GetScreenShotBean;->status:Z

    return v0
.end method

.method public setScreenshot(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/codemao/nemo/bean/GetScreenShotBean;->screenshot:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/GetScreenShotBean;->status:Z

    return-void
.end method
