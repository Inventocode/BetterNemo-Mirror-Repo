.class public Lcom/codemao/nemo/event/MessageReadEvent;
.super Ljava/lang/Object;
.source "MessageReadEvent.java"


# instance fields
.field private count:I

.field private index:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/codemao/nemo/event/MessageReadEvent;->index:I

    .line 16
    iput p2, p0, Lcom/codemao/nemo/event/MessageReadEvent;->count:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/codemao/nemo/event/MessageReadEvent;->count:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/codemao/nemo/event/MessageReadEvent;->index:I

    return v0
.end method
