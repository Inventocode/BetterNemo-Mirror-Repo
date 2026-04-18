.class public final enum Lcom/sdk/a/d$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdk/a/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/sdk/a/d$b;

.field public static final enum c:Lcom/sdk/a/d$b;

.field public static final synthetic l:[Lcom/sdk/a/d$b;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/sdk/a/d$b;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/sdk/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sdk/a/d$b;->b:Lcom/sdk/a/d$b;

    new-instance v1, Lcom/sdk/a/d$b;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/sdk/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sdk/a/d$b;->c:Lcom/sdk/a/d$b;

    new-instance v3, Lcom/sdk/a/d$b;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/sdk/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lcom/sdk/a/d$b;

    const-string v7, "HEAD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/sdk/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lcom/sdk/a/d$b;

    const-string v9, "MOVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/sdk/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lcom/sdk/a/d$b;

    const-string v11, "COPY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/sdk/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v11, Lcom/sdk/a/d$b;

    const-string v13, "DELETE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/sdk/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v13, Lcom/sdk/a/d$b;

    const-string v15, "OPTIONS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lcom/sdk/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/sdk/a/d$b;

    const-string v14, "TRACE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lcom/sdk/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/sdk/a/d$b;

    const-string v12, "CONNECT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lcom/sdk/a/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/sdk/a/d$b;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/sdk/a/d$b;->l:[Lcom/sdk/a/d$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sdk/a/d$b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdk/a/d$b;
    .registers 2

    const-class v0, Lcom/sdk/a/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdk/a/d$b;

    return-object p0
.end method

.method public static values()[Lcom/sdk/a/d$b;
    .registers 1

    sget-object v0, Lcom/sdk/a/d$b;->l:[Lcom/sdk/a/d$b;

    invoke-virtual {v0}, [Lcom/sdk/a/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdk/a/d$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdk/a/d$b;->a:Ljava/lang/String;

    return-object v0
.end method
