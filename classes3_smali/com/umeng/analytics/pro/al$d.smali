.class Lcom/umeng/analytics/pro/al$d;
.super Ljava/lang/Object;
.source "UMEnvelope.java"

# interfaces
.implements Lcom/umeng/analytics/pro/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/al$1;)V
    .registers 2

    .line 903
    invoke-direct {p0}, Lcom/umeng/analytics/pro/al$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/pro/al$c;
    .registers 3

    .line 906
    new-instance v0, Lcom/umeng/analytics/pro/al$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/al$c;-><init>(Lcom/umeng/analytics/pro/al$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/analytics/pro/ca;
    .registers 2

    .line 903
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/al$d;->a()Lcom/umeng/analytics/pro/al$c;

    move-result-object v0

    return-object v0
.end method
