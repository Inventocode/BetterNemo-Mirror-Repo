.class public final synthetic Lcom/codemao/toolssdk/view/MaskOverlayView$WhenMappings;
.super Ljava/lang/Object;
.source "MaskOverlayView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/view/MaskOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;->values()[Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;->RECTANGLE:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;->CIRCLE:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lcom/codemao/toolssdk/view/MaskOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
