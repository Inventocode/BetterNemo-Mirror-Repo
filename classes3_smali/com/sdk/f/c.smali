.class public Lcom/sdk/f/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/f/c$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static c:Z

.field public static d:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "installTime"

    sput-object v0, Lcom/sdk/f/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdk/f/c;->b:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sdk/f/c;->c:Z

    sput-boolean v0, Lcom/sdk/f/c;->d:Z

    return-void
.end method
