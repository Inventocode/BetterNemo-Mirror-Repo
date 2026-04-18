.class public Lcom/codemao/nemo/bean/ConsumeLevelInfo;
.super Ljava/lang/Object;
.source "ConsumeLevelInfo.java"


# instance fields
.field private is_official_certification:I

.field private level:I

.field private upgrade_hint:I

.field private user_id:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIs_official_certification()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/codemao/nemo/bean/ConsumeLevelInfo;->is_official_certification:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/codemao/nemo/bean/ConsumeLevelInfo;->level:I

    return v0
.end method

.method public getUpgrade_hint()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/codemao/nemo/bean/ConsumeLevelInfo;->upgrade_hint:I

    return v0
.end method

.method public getUser_id()J
    .registers 3

    .line 13
    iget-wide v0, p0, Lcom/codemao/nemo/bean/ConsumeLevelInfo;->user_id:J

    return-wide v0
.end method

.method public setIs_official_certification(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/codemao/nemo/bean/ConsumeLevelInfo;->is_official_certification:I

    return-void
.end method

.method public setLevel(I)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/codemao/nemo/bean/ConsumeLevelInfo;->level:I

    return-void
.end method

.method public setUpgrade_hint(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/codemao/nemo/bean/ConsumeLevelInfo;->upgrade_hint:I

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 17
    iput-wide p1, p0, Lcom/codemao/nemo/bean/ConsumeLevelInfo;->user_id:J

    return-void
.end method
