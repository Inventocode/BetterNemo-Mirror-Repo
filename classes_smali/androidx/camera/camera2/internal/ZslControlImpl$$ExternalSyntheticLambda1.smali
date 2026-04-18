.class public final synthetic Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/camera/core/internal/utils/RingBuffer$OnRemoveCallback;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda1;->INSTANCE:Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemove(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroidx/camera/core/ImageProxy;

    invoke-static {p1}, Landroidx/camera/camera2/internal/ZslControlImpl;->$r8$lambda$hLcsGE-uZoj_DQG5DCZ1FZPp4_4(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method
