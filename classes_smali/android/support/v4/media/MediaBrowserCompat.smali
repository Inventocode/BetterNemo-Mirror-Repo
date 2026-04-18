.class public final Landroid/support/v4/media/MediaBrowserCompat;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$Api21Impl;,
        Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;,
        Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;,
        Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;,
        Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;,
        Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;,
        Landroid/support/v4/media/MediaBrowserCompat$Subscription;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi26;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;,
        Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;,
        Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private final mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "MediaBrowserCompat"

    const/4 v1, 0x3

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "serviceComponent",
            "callback",
            "rootHints"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    .line 208
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi26;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi26;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    goto :goto_30

    :cond_11
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1d

    .line 210
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    goto :goto_30

    :cond_1d
    const/16 v1, 0x15

    if-lt v0, v1, :cond_29

    .line 212
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    goto :goto_30

    .line 214
    :cond_29
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    :goto_30
    return-void
.end method


# virtual methods
.method public connect()V
    .registers 3

    const-string v0, "MediaBrowserCompat"

    const-string v1, "Connecting to a MediaBrowserService."

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->connect()V

    return-void
.end method

.method public disconnect()V
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->disconnect()V

    return-void
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->mImpl:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method
