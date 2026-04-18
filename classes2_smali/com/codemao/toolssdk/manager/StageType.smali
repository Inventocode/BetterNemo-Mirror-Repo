.class public final enum Lcom/codemao/toolssdk/manager/StageType;
.super Ljava/lang/Enum;
.source "CMToolsManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/toolssdk/manager/StageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/toolssdk/manager/StageType;

.field public static final enum Landscape:Lcom/codemao/toolssdk/manager/StageType;

.field public static final enum Portrait:Lcom/codemao/toolssdk/manager/StageType;


# instance fields
.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcom/codemao/toolssdk/manager/StageType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/codemao/toolssdk/manager/StageType;

    sget-object v1, Lcom/codemao/toolssdk/manager/StageType;->Portrait:Lcom/codemao/toolssdk/manager/StageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/manager/StageType;->Landscape:Lcom/codemao/toolssdk/manager/StageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 76
    new-instance v0, Lcom/codemao/toolssdk/manager/StageType;

    const-string v1, "Portrait"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/toolssdk/manager/StageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codemao/toolssdk/manager/StageType;->Portrait:Lcom/codemao/toolssdk/manager/StageType;

    new-instance v0, Lcom/codemao/toolssdk/manager/StageType;

    const-string v1, "Landscape"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/codemao/toolssdk/manager/StageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codemao/toolssdk/manager/StageType;->Landscape:Lcom/codemao/toolssdk/manager/StageType;

    invoke-static {}, Lcom/codemao/toolssdk/manager/StageType;->$values()[Lcom/codemao/toolssdk/manager/StageType;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/manager/StageType;->$VALUES:[Lcom/codemao/toolssdk/manager/StageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/codemao/toolssdk/manager/StageType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/toolssdk/manager/StageType;
    .registers 2

    const-class v0, Lcom/codemao/toolssdk/manager/StageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/manager/StageType;

    return-object p0
.end method

.method public static values()[Lcom/codemao/toolssdk/manager/StageType;
    .registers 1

    sget-object v0, Lcom/codemao/toolssdk/manager/StageType;->$VALUES:[Lcom/codemao/toolssdk/manager/StageType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/toolssdk/manager/StageType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/codemao/toolssdk/manager/StageType;->type:I

    return v0
.end method
