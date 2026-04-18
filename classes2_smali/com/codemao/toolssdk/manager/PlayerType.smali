.class public final enum Lcom/codemao/toolssdk/manager/PlayerType;
.super Ljava/lang/Enum;
.source "CMToolsManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/toolssdk/manager/PlayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/toolssdk/manager/PlayerType;

.field public static final enum Community:Lcom/codemao/toolssdk/manager/PlayerType;

.field public static final enum Share:Lcom/codemao/toolssdk/manager/PlayerType;


# instance fields
.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcom/codemao/toolssdk/manager/PlayerType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/codemao/toolssdk/manager/PlayerType;

    sget-object v1, Lcom/codemao/toolssdk/manager/PlayerType;->Share:Lcom/codemao/toolssdk/manager/PlayerType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/manager/PlayerType;->Community:Lcom/codemao/toolssdk/manager/PlayerType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 80
    new-instance v0, Lcom/codemao/toolssdk/manager/PlayerType;

    const-string v1, "Share"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/toolssdk/manager/PlayerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codemao/toolssdk/manager/PlayerType;->Share:Lcom/codemao/toolssdk/manager/PlayerType;

    new-instance v0, Lcom/codemao/toolssdk/manager/PlayerType;

    const-string v1, "Community"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/codemao/toolssdk/manager/PlayerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codemao/toolssdk/manager/PlayerType;->Community:Lcom/codemao/toolssdk/manager/PlayerType;

    invoke-static {}, Lcom/codemao/toolssdk/manager/PlayerType;->$values()[Lcom/codemao/toolssdk/manager/PlayerType;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/manager/PlayerType;->$VALUES:[Lcom/codemao/toolssdk/manager/PlayerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/codemao/toolssdk/manager/PlayerType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/toolssdk/manager/PlayerType;
    .registers 2

    const-class v0, Lcom/codemao/toolssdk/manager/PlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/manager/PlayerType;

    return-object p0
.end method

.method public static values()[Lcom/codemao/toolssdk/manager/PlayerType;
    .registers 1

    sget-object v0, Lcom/codemao/toolssdk/manager/PlayerType;->$VALUES:[Lcom/codemao/toolssdk/manager/PlayerType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/toolssdk/manager/PlayerType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/codemao/toolssdk/manager/PlayerType;->type:I

    return v0
.end method
