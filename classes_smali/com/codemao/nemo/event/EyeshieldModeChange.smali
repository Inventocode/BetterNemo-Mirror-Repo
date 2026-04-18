.class public Lcom/codemao/nemo/event/EyeshieldModeChange;
.super Ljava/lang/Object;
.source "EyeshieldModeChange.java"


# instance fields
.field public isOpen:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/codemao/nemo/event/EyeshieldModeChange;->isOpen:Z

    return-void
.end method
