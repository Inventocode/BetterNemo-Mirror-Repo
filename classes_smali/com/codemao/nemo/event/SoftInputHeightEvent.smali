.class public Lcom/codemao/nemo/event/SoftInputHeightEvent;
.super Ljava/lang/Object;
.source "SoftInputHeightEvent.java"


# instance fields
.field private softHeight:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/codemao/nemo/event/SoftInputHeightEvent;->softHeight:I

    return-void
.end method


# virtual methods
.method public getSoftHeight()I
    .registers 2

    .line 11
    iget v0, p0, Lcom/codemao/nemo/event/SoftInputHeightEvent;->softHeight:I

    return v0
.end method
