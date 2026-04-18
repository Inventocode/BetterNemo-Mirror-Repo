.class public final Landroidx/media/MediaSessionManager$RemoteUserInfo;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# instance fields
.field mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "pid",
            "uid"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "package shouldn\'t be null"

    .line 157
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1c

    .line 162
    new-instance v0, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    goto :goto_23

    .line 166
    :cond_1c
    new-instance v0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    :goto_23
    return-void

    .line 159
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "packageName should be nonempty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 239
    :cond_4
    instance-of v0, p1, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 242
    :cond_a
    iget-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    check-cast p1, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object p1, p1, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 247
    iget-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
