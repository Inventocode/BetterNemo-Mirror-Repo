.class public abstract enum Lcom/sdk/f/c$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdk/f/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sdk/f/c$b;

.field public static final enum b:Lcom/sdk/f/c$b;

.field public static final synthetic c:[Lcom/sdk/f/c$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/sdk/f/c$b$a;

    const-string v1, "PRODUCE_STATISTICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sdk/f/c$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdk/f/c$b;->a:Lcom/sdk/f/c$b;

    new-instance v1, Lcom/sdk/f/c$b$b;

    const-string v3, "PRODUCE_DZH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sdk/f/c$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sdk/f/c$b;->b:Lcom/sdk/f/c$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sdk/f/c$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sdk/f/c$b;->c:[Lcom/sdk/f/c$b;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/sdk/f/c$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/sdk/f/c$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdk/f/c$b;
    .registers 2

    const-class v0, Lcom/sdk/f/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdk/f/c$b;

    return-object p0
.end method

.method public static values()[Lcom/sdk/f/c$b;
    .registers 1

    sget-object v0, Lcom/sdk/f/c$b;->c:[Lcom/sdk/f/c$b;

    invoke-virtual {v0}, [Lcom/sdk/f/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdk/f/c$b;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
