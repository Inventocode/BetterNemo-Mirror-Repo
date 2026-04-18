.class public final Lcom/geetest/sdk/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/k$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/geetest/sdk/k$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/geetest/sdk/k;-><init>()V

    return-void
.end method

.method public static a()Lcom/geetest/sdk/k;
    .registers 1

    .line 1
    invoke-static {}, Lcom/geetest/sdk/k$b;->a()Lcom/geetest/sdk/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 2
    invoke-static {}, Lcom/geetest/sdk/l;->a()Lcom/geetest/sdk/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geetest/sdk/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
