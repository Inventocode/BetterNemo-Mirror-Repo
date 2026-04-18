.class public Lcom/codemao/nemo/event/FinishAnswerEvent;
.super Ljava/lang/Object;
.source "FinishAnswerEvent.java"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/codemao/nemo/event/FinishAnswerEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/codemao/nemo/event/FinishAnswerEvent;->type:I

    return v0
.end method
