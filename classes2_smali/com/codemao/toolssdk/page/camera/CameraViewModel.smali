.class public final Lcom/codemao/toolssdk/page/camera/CameraViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "CameraViewModel.kt"


# instance fields
.field private final _imageResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final captureFileResult:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final optionData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 10
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->_imageResult:Landroidx/lifecycle/MutableLiveData;

    .line 11
    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->captureFileResult:Landroidx/lifecycle/LiveData;

    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 14
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->optionData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final getCaptureFileResult()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->captureFileResult:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getOptionData()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->optionData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final setCaptureFileResult(Ljava/lang/String;)V
    .registers 3

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->_imageResult:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
