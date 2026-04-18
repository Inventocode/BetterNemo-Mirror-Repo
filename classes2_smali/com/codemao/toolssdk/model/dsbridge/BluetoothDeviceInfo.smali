.class public final Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;
.super Ljava/lang/Object;
.source "BluetoothDeviceInfo.kt"


# instance fields
.field private characteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
            ">;"
        }
    .end annotation
.end field

.field private disposable:Lio/reactivex/disposables/Disposable;

.field private final macAddress:Ljava/lang/String;

.field private final publishSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/reactivex/subjects/PublishSubject;Lio/reactivex/Observable;Lio/reactivex/disposables/Disposable;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
            ">;",
            "Lio/reactivex/disposables/Disposable;",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "macAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishSubject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionObservable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->macAddress:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->publishSubject:Lio/reactivex/subjects/PublishSubject;

    .line 12
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->connectionObservable:Lio/reactivex/Observable;

    .line 13
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->disposable:Lio/reactivex/disposables/Disposable;

    .line 14
    iput-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->characteristics:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;Ljava/lang/String;Lio/reactivex/subjects/PublishSubject;Lio/reactivex/Observable;Lio/reactivex/disposables/Disposable;Ljava/util/List;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->macAddress:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->publishSubject:Lio/reactivex/subjects/PublishSubject;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->connectionObservable:Lio/reactivex/Observable;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->characteristics:Ljava/util/List;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->copy(Ljava/lang/String;Lio/reactivex/subjects/PublishSubject;Lio/reactivex/Observable;Lio/reactivex/disposables/Disposable;Ljava/util/List;)Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lio/reactivex/subjects/PublishSubject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->publishSubject:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public final component3()Lio/reactivex/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->connectionObservable:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final component4()Lio/reactivex/disposables/Disposable;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->disposable:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->characteristics:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lio/reactivex/subjects/PublishSubject;Lio/reactivex/Observable;Lio/reactivex/disposables/Disposable;Ljava/util/List;)Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
            ">;",
            "Lio/reactivex/disposables/Disposable;",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)",
            "Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;"
        }
    .end annotation

    const-string v0, "macAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishSubject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionObservable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;-><init>(Ljava/lang/String;Lio/reactivex/subjects/PublishSubject;Lio/reactivex/Observable;Lio/reactivex/disposables/Disposable;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->macAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->macAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->publishSubject:Lio/reactivex/subjects/PublishSubject;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->publishSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->connectionObservable:Lio/reactivex/Observable;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->connectionObservable:Lio/reactivex/Observable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->disposable:Lio/reactivex/disposables/Disposable;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->characteristics:Ljava/util/List;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->characteristics:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final getCharacteristics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->characteristics:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectionObservable()Lio/reactivex/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->connectionObservable:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final getDisposable()Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->disposable:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final getMacAddress()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublishSubject()Lio/reactivex/subjects/PublishSubject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->publishSubject:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->macAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->publishSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->connectionObservable:Lio/reactivex/Observable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->disposable:Lio/reactivex/disposables/Disposable;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    const/4 v1, 0x0

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->characteristics:Ljava/util/List;

    if-nez v1, :cond_2d

    goto :goto_31

    :cond_2d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    return v0
.end method

.method public final setCharacteristics(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->characteristics:Ljava/util/List;

    return-void
.end method

.method public final setDisposable(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothDeviceInfo(macAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publishSubject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->publishSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionObservable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->connectionObservable:Lio/reactivex/Observable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", disposable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", characteristics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->characteristics:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
