.class public final synthetic Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceImpl;

.field public final synthetic f$1:Lcom/polidea/rxandroidble2_codemao/ConnectionSetup;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceImpl;Lcom/polidea/rxandroidble2_codemao/ConnectionSetup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceImpl$$ExternalSyntheticLambda1;->f$1:Lcom/polidea/rxandroidble2_codemao/ConnectionSetup;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceImpl;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceImpl$$ExternalSyntheticLambda1;->f$1:Lcom/polidea/rxandroidble2_codemao/ConnectionSetup;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceImpl;->$r8$lambda$7imq6PjTYv3oGrWpYdU2u9PSv6g(Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceImpl;Lcom/polidea/rxandroidble2_codemao/ConnectionSetup;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
