.class public Lcom/chuanglan/shanyan_sdk/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/b;->a:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/os/IBinder;Ljava/lang/String;)Lcom/chuanglan/shanyan_sdk/b/b;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/chuanglan/shanyan_sdk/b/b;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/chuanglan/shanyan_sdk/b/b;

    goto :goto_14

    :cond_f
    new-instance v0, Lcom/chuanglan/shanyan_sdk/b/b;

    invoke-direct {v0, p0, p1}, Lcom/chuanglan/shanyan_sdk/b/b;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    :goto_14
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    const-string v0, ""

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_a
    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/b/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_21
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2a
    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/b;->a:Landroid/os/IBinder;

    const/4 p2, 0x0

    invoke-interface {p1, p4, v1, v2, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_38

    return-object p1

    :catchall_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3e} :catch_3e

    :catch_3e
    return-object v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/b;->a:Landroid/os/IBinder;

    return-object v0
.end method
