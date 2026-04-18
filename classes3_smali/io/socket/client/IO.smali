.class public Lio/socket/client/IO;
.super Ljava/lang/Object;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/client/IO$Options;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final managers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lio/socket/client/Manager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lio/socket/client/IO;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/client/IO;->logger:Ljava/util/logging/Logger;

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/socket/client/IO;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static socket(Ljava/lang/String;Lio/socket/client/IO$Options;)Lio/socket/client/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/socket/client/IO;->socket(Ljava/net/URI;Lio/socket/client/IO$Options;)Lio/socket/client/Socket;

    move-result-object p0

    return-object p0
.end method

.method public static socket(Ljava/net/URI;Lio/socket/client/IO$Options;)Lio/socket/client/Socket;
    .registers 9

    if-nez p1, :cond_7

    .line 58
    new-instance p1, Lio/socket/client/IO$Options;

    invoke-direct {p1}, Lio/socket/client/IO$Options;-><init>()V

    .line 61
    :cond_7
    invoke-static {p0}, Lio/socket/client/Url;->parse(Ljava/net/URI;)Ljava/net/URL;

    move-result-object p0

    .line 64
    :try_start_b
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0
    :try_end_f
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_f} :catch_a6

    .line 68
    invoke-static {p0}, Lio/socket/client/Url;->extractId(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 70
    sget-object v3, Lio/socket/client/IO;->managers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_31

    .line 71
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/socket/client/Manager;

    iget-object v4, v4, Lio/socket/client/Manager;->nsps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    .line 72
    :goto_32
    iget-boolean v4, p1, Lio/socket/client/IO$Options;->forceNew:Z

    if-nez v4, :cond_3f

    iget-boolean v4, p1, Lio/socket/client/IO$Options;->multiplex:Z

    if-eqz v4, :cond_3f

    if-eqz v2, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v2, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v2, 0x1

    :goto_40
    if-eqz v2, :cond_5f

    .line 76
    sget-object v1, Lio/socket/client/IO;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_59

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v6

    const-string v3, "ignoring socket cache for %s"

    .line 77
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 79
    :cond_59
    new-instance v1, Lio/socket/client/Manager;

    invoke-direct {v1, v0, p1}, Lio/socket/client/Manager;-><init>(Ljava/net/URI;Lio/socket/client/Manager$Options;)V

    goto :goto_8b

    .line 81
    :cond_5f
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    .line 82
    sget-object v2, Lio/socket/client/IO;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_7c

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const-string v5, "new io instance for %s"

    .line 83
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 85
    :cond_7c
    new-instance v2, Lio/socket/client/Manager;

    invoke-direct {v2, v0, p1}, Lio/socket/client/Manager;-><init>(Ljava/net/URI;Lio/socket/client/Manager$Options;)V

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_84
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/socket/client/Manager;

    .line 90
    :goto_8b
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9d

    .line 91
    iget-object v2, p1, Lio/socket/engineio/client/Socket$Options;->query:Ljava/lang/String;

    if-eqz v2, :cond_9b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 92
    :cond_9b
    iput-object v0, p1, Lio/socket/engineio/client/Socket$Options;->query:Ljava/lang/String;

    .line 95
    :cond_9d
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lio/socket/client/Manager;->socket(Ljava/lang/String;Lio/socket/client/Manager$Options;)Lio/socket/client/Socket;

    move-result-object p0

    return-object p0

    :catch_a6
    move-exception p0

    .line 66
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
