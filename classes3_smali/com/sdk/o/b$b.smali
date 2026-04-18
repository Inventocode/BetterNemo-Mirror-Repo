.class public abstract enum Lcom/sdk/o/b$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdk/o/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sdk/o/b$b;

.field public static final enum b:Lcom/sdk/o/b$b;

.field public static final enum c:Lcom/sdk/o/b$b;

.field public static final synthetic d:[Lcom/sdk/o/b$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/sdk/o/b$b$a;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sdk/o/b$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdk/o/b$b;->a:Lcom/sdk/o/b$b;

    new-instance v1, Lcom/sdk/o/b$b$b;

    const-string v3, "NET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sdk/o/b$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sdk/o/b$b;->b:Lcom/sdk/o/b$b;

    new-instance v3, Lcom/sdk/o/b$b$c;

    const-string v5, "UNKNOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sdk/o/b$b$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sdk/o/b$b;->c:Lcom/sdk/o/b$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sdk/o/b$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sdk/o/b$b;->d:[Lcom/sdk/o/b$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/sdk/o/b$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/sdk/o/b$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdk/o/b$b;
    .registers 2

    const-class v0, Lcom/sdk/o/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdk/o/b$b;

    return-object p0
.end method

.method public static values()[Lcom/sdk/o/b$b;
    .registers 1

    sget-object v0, Lcom/sdk/o/b$b;->d:[Lcom/sdk/o/b$b;

    invoke-virtual {v0}, [Lcom/sdk/o/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdk/o/b$b;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method
