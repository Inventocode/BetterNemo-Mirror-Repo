.class public Lcom/codemao/nemo/bean/ForkWorkResult;
.super Ljava/lang/Object;
.source "ForkWorkResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private Work_id:I

.field private bcm_url:Ljava/lang/String;

.field private fork_times:Ljava/lang/String;

.field private screenshot_cover_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBcm_url()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/bean/ForkWorkResult;->bcm_url:Ljava/lang/String;

    return-object v0
.end method

.method public getFork_times()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/bean/ForkWorkResult;->fork_times:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshot_cover_url()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/bean/ForkWorkResult;->screenshot_cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public getWork_id()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/codemao/nemo/bean/ForkWorkResult;->Work_id:I

    return v0
.end method

.method public setBcm_url(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/bean/ForkWorkResult;->bcm_url:Ljava/lang/String;

    return-void
.end method

.method public setFork_times(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/codemao/nemo/bean/ForkWorkResult;->fork_times:Ljava/lang/String;

    return-void
.end method

.method public setScreenshot_cover_url(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/codemao/nemo/bean/ForkWorkResult;->screenshot_cover_url:Ljava/lang/String;

    return-void
.end method

.method public setWork_id(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/codemao/nemo/bean/ForkWorkResult;->Work_id:I

    return-void
.end method
