.class public final enum Lcom/codemao/toolssdk/image_selector/widget/GestureType;
.super Ljava/lang/Enum;
.source "ManualCutOutView.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/toolssdk/image_selector/widget/GestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/toolssdk/image_selector/widget/GestureType;

.field public static final enum MOVE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

.field public static final enum NONE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

.field public static final enum SCALE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;


# direct methods
.method private static final synthetic $values()[Lcom/codemao/toolssdk/image_selector/widget/GestureType;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    sget-object v1, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->MOVE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->SCALE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->NONE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 448
    new-instance v0, Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    const-string v1, "MOVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/image_selector/widget/GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->MOVE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    new-instance v0, Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    const-string v1, "SCALE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/image_selector/widget/GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->SCALE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    new-instance v0, Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/image_selector/widget/GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->NONE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    invoke-static {}, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->$values()[Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->$VALUES:[Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 447
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/toolssdk/image_selector/widget/GestureType;
    .registers 2

    const-class v0, Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    return-object p0
.end method

.method public static values()[Lcom/codemao/toolssdk/image_selector/widget/GestureType;
    .registers 1

    sget-object v0, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->$VALUES:[Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    return-object v0
.end method
