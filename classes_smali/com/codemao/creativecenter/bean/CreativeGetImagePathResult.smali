.class public Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;
.super Ljava/lang/Object;
.source "CreativeGetImagePathResult.java"


# instance fields
.field private resultInfo:Lcn/codemao/android/sketch/model/ResultInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/ResultInfo;I)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;->resultInfo:Lcn/codemao/android/sketch/model/ResultInfo;

    .line 17
    iput p2, p0, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;->type:I

    return-void
.end method


# virtual methods
.method public getResultInfo()Lcn/codemao/android/sketch/model/ResultInfo;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;->resultInfo:Lcn/codemao/android/sketch/model/ResultInfo;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;->type:I

    return v0
.end method
