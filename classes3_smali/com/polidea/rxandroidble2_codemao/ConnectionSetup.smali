.class public Lcom/polidea/rxandroidble2_codemao/ConnectionSetup;
.super Ljava/lang/Object;
.source "ConnectionSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/ConnectionSetup$Builder;
    }
.end annotation


# instance fields
.field public final autoConnect:Z

.field public final operationTimeout:Lcom/polidea/rxandroidble2_codemao/Timeout;

.field public final suppressOperationCheck:Z


# direct methods
.method constructor <init>(ZZLcom/polidea/rxandroidble2_codemao/Timeout;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcom/polidea/rxandroidble2_codemao/ConnectionSetup;->autoConnect:Z

    .line 38
    iput-boolean p2, p0, Lcom/polidea/rxandroidble2_codemao/ConnectionSetup;->suppressOperationCheck:Z

    .line 39
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/ConnectionSetup;->operationTimeout:Lcom/polidea/rxandroidble2_codemao/Timeout;

    return-void
.end method
