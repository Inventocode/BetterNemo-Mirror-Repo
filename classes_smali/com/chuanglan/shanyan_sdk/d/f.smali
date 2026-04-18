.class public final enum Lcom/chuanglan/shanyan_sdk/d/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chuanglan/shanyan_sdk/d/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chuanglan/shanyan_sdk/d/f;

.field public static final enum b:Lcom/chuanglan/shanyan_sdk/d/f;

.field private static final synthetic c:[Lcom/chuanglan/shanyan_sdk/d/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/chuanglan/shanyan_sdk/d/f;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chuanglan/shanyan_sdk/d/f;->a:Lcom/chuanglan/shanyan_sdk/d/f;

    new-instance v1, Lcom/chuanglan/shanyan_sdk/d/f;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/chuanglan/shanyan_sdk/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/d/f;->b:Lcom/chuanglan/shanyan_sdk/d/f;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/chuanglan/shanyan_sdk/d/f;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/chuanglan/shanyan_sdk/d/f;->c:[Lcom/chuanglan/shanyan_sdk/d/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chuanglan/shanyan_sdk/d/f;
    .registers 2

    const-class v0, Lcom/chuanglan/shanyan_sdk/d/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chuanglan/shanyan_sdk/d/f;

    return-object p0
.end method

.method public static values()[Lcom/chuanglan/shanyan_sdk/d/f;
    .registers 1

    sget-object v0, Lcom/chuanglan/shanyan_sdk/d/f;->c:[Lcom/chuanglan/shanyan_sdk/d/f;

    invoke-virtual {v0}, [Lcom/chuanglan/shanyan_sdk/d/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chuanglan/shanyan_sdk/d/f;

    return-object v0
.end method
