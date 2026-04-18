.class public Lcom/umeng/analytics/pro/bk;
.super Lcom/umeng/analytics/pro/bg;
.source "StructMetaData.java"


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/at;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(BLjava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/at;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bg;-><init>(B)V

    .line 30
    iput-object p2, p0, Lcom/umeng/analytics/pro/bk;->a:Ljava/lang/Class;

    return-void
.end method
