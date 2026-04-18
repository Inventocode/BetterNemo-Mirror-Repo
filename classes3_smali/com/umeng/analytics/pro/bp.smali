.class public final Lcom/umeng/analytics/pro/bp;
.super Ljava/lang/Object;
.source "TMap.java"


# instance fields
.field public final a:B

.field public final b:B

.field public final c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0, v0}, Lcom/umeng/analytics/pro/bp;-><init>(BBI)V

    return-void
.end method

.method public constructor <init>(BBI)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-byte p1, p0, Lcom/umeng/analytics/pro/bp;->a:B

    .line 33
    iput-byte p2, p0, Lcom/umeng/analytics/pro/bp;->b:B

    .line 34
    iput p3, p0, Lcom/umeng/analytics/pro/bp;->c:I

    return-void
.end method
