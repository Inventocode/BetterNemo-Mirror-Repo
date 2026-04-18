.class public abstract Lcom/codemao/nemo/http/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# instance fields
.field protected disposables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/http/NetUtils;->disposables:Ljava/util/List;

    return-void
.end method

.method public static getNetType(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "connectivity"

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_f

    .line 35
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_49

    .line 37
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_49

    .line 39
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "phone"

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 44
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_33

    const-string p0, ""

    return-object p0

    .line 47
    :cond_33
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_4c

    :pswitch_3a  #0x4, 0x7, 0xb
    const-string p0, "MOBILE"

    goto :goto_42

    :pswitch_3d  #0xd
    const-string p0, "4G"

    goto :goto_42

    :pswitch_40  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf
    const-string p0, "3G"

    :goto_42
    return-object p0

    :cond_43
    const/4 p0, 0x1

    if-ne v0, p0, :cond_49

    const-string p0, "WIFI"

    return-object p0

    :cond_49
    const-string p0, "unknown"

    return-object p0

    :pswitch_data_4c
    .packed-switch 0x3
        :pswitch_40  #00000003
        :pswitch_3a  #00000004
        :pswitch_40  #00000005
        :pswitch_40  #00000006
        :pswitch_3a  #00000007
        :pswitch_40  #00000008
        :pswitch_40  #00000009
        :pswitch_40  #0000000a
        :pswitch_3a  #0000000b
        :pswitch_40  #0000000c
        :pswitch_3d  #0000000d
        :pswitch_40  #0000000e
        :pswitch_40  #0000000f
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .registers 3

    const/4 v0, 0x0

    .line 21
    :goto_1
    iget-object v1, p0, Lcom/codemao/nemo/http/NetUtils;->disposables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 22
    iget-object v1, p0, Lcom/codemao/nemo/http/NetUtils;->disposables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_22

    .line 23
    iget-object v1, p0, Lcom/codemao/nemo/http/NetUtils;->disposables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method
