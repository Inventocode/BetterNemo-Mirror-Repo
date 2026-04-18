.class Lcom/geetest/sdk/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/geetest/sdk/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/geetest/sdk/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/sdk/l;-><init>(Lcom/geetest/sdk/l$a;)V

    sput-object v0, Lcom/geetest/sdk/l$b;->a:Lcom/geetest/sdk/l;

    return-void
.end method

.method static synthetic a()Lcom/geetest/sdk/l;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/l$b;->a:Lcom/geetest/sdk/l;

    return-object v0
.end method
