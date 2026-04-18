.class public final enum Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;
.super Ljava/lang/Enum;
.source "MaskOverlayView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/view/MaskOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransparentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

.field public static final enum CIRCLE:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

.field public static final enum RECTANGLE:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;


# direct methods
.method private static final synthetic $values()[Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    sget-object v1, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;->RECTANGLE:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;->CIRCLE:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 45
    new-instance v0, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    const-string v1, "RECTANGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;->RECTANGLE:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    .line 46
    new-instance v0, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    const-string v1, "CIRCLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;->CIRCLE:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    invoke-static {}, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;->$values()[Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;->$VALUES:[Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;
    .registers 2

    const-class v0, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    return-object p0
.end method

.method public static values()[Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;
    .registers 1

    sget-object v0, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;->$VALUES:[Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    return-object v0
.end method
