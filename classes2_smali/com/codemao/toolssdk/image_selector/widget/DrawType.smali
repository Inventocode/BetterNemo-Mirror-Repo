.class public final enum Lcom/codemao/toolssdk/image_selector/widget/DrawType;
.super Ljava/lang/Enum;
.source "ManualCutOutView.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/toolssdk/image_selector/widget/DrawType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/toolssdk/image_selector/widget/DrawType;

.field public static final enum ERASER:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

.field public static final enum PEN:Lcom/codemao/toolssdk/image_selector/widget/DrawType;


# direct methods
.method private static final synthetic $values()[Lcom/codemao/toolssdk/image_selector/widget/DrawType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    sget-object v1, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->ERASER:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->PEN:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 444
    new-instance v0, Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    const-string v1, "ERASER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/image_selector/widget/DrawType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->ERASER:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    new-instance v0, Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    const-string v1, "PEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/image_selector/widget/DrawType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->PEN:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    invoke-static {}, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->$values()[Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->$VALUES:[Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 443
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/toolssdk/image_selector/widget/DrawType;
    .registers 2

    const-class v0, Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    return-object p0
.end method

.method public static values()[Lcom/codemao/toolssdk/image_selector/widget/DrawType;
    .registers 1

    sget-object v0, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->$VALUES:[Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    return-object v0
.end method
