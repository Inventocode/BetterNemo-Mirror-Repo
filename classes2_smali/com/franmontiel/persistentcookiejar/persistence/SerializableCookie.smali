.class public Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;
.super Ljava/lang/Object;
.source "SerializableCookie.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static NON_VALID_EXPIRES_AT:J = 0x0L

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x77442f0b309f5e9eL


# instance fields
.field private transient cookie:Lokhttp3/Cookie;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    const-class v0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 126
    sput-wide v0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->NON_VALID_EXPIRES_AT:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .registers 6

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_23

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_19

    const/16 v4, 0x30

    .line 76
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    :cond_19
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 80
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 118
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_2a

    .line 120
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 121
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_2a
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 140
    new-instance v0, Lokhttp3/Cookie$Builder;

    invoke-direct {v0}, Lokhttp3/Cookie$Builder;-><init>()V

    .line 142
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Cookie$Builder;->name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    .line 144
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Cookie$Builder;->value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    .line 146
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v1

    .line 147
    sget-wide v3, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->NON_VALID_EXPIRES_AT:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_24

    .line 148
    invoke-virtual {v0, v1, v2}, Lokhttp3/Cookie$Builder;->expiresAt(J)Lokhttp3/Cookie$Builder;

    .line 151
    :cond_24
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    invoke-virtual {v0, v1}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    .line 154
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lokhttp3/Cookie$Builder;->path(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    .line 156
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 157
    invoke-virtual {v0}, Lokhttp3/Cookie$Builder;->secure()Lokhttp3/Cookie$Builder;

    .line 159
    :cond_3f
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 160
    invoke-virtual {v0}, Lokhttp3/Cookie$Builder;->httpOnly()Lokhttp3/Cookie$Builder;

    .line 162
    :cond_48
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 163
    invoke-virtual {v0, v1}, Lokhttp3/Cookie$Builder;->hostOnlyDomain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    .line 165
    :cond_51
    invoke-virtual {v0}, Lokhttp3/Cookie$Builder;->build()Lokhttp3/Cookie;

    move-result-object p1

    iput-object p1, p0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->cookie:Lokhttp3/Cookie;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->persistent()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->expiresAt()J

    move-result-wide v0

    goto :goto_23

    :cond_21
    sget-wide v0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->NON_VALID_EXPIRES_AT:J

    :goto_23
    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 132
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->secure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 135
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->httpOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 136
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->hostOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Lokhttp3/Cookie;
    .registers 7

    const-string v0, "Stream not closed in decodeCookie"

    .line 85
    invoke-static {p1}, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 86
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x0

    .line 92
    :try_start_c
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_3b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_11} :catch_2c
    .catchall {:try_start_c .. :try_end_11} :catchall_28

    .line 93
    :try_start_11
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;

    iget-object p1, v1, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->cookie:Lokhttp3/Cookie;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_19} :catch_24
    .catchall {:try_start_11 .. :try_end_19} :catchall_4a

    .line 101
    :try_start_19
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_49

    :catch_1d
    move-exception v1

    .line 103
    sget-object v2, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    :catch_24
    move-exception v1

    goto :goto_2e

    :catch_26
    move-exception v1

    goto :goto_3d

    :catchall_28
    move-exception v1

    move-object v2, p1

    move-object p1, v1

    goto :goto_4b

    :catch_2c
    move-exception v1

    move-object v2, p1

    .line 97
    :goto_2e
    :try_start_2e
    sget-object v3, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->TAG:Ljava/lang/String;

    const-string v4, "ClassNotFoundException in decodeCookie"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_4a

    if-eqz v2, :cond_49

    .line 101
    :try_start_37
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_1d

    goto :goto_49

    :catch_3b
    move-exception v1

    move-object v2, p1

    .line 95
    :goto_3d
    :try_start_3d
    sget-object v3, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->TAG:Ljava/lang/String;

    const-string v4, "IOException in decodeCookie"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_4a

    if-eqz v2, :cond_49

    .line 101
    :try_start_46
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_1d

    :cond_49
    :goto_49
    return-object p1

    :catchall_4a
    move-exception p1

    :goto_4b
    if-eqz v2, :cond_57

    :try_start_4d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_57

    :catch_51
    move-exception v1

    .line 103
    sget-object v2, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :cond_57
    :goto_57
    throw p1
.end method

.method public encode(Lokhttp3/Cookie;)Ljava/lang/String;
    .registers 7

    const-string v0, "Stream not closed in encodeCookie"

    .line 38
    iput-object p1, p0, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->cookie:Lokhttp3/Cookie;

    .line 40
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 44
    :try_start_a
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_29
    .catchall {:try_start_a .. :try_end_f} :catchall_27

    .line 45
    :try_start_f
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_25
    .catchall {:try_start_f .. :try_end_12} :catchall_3f

    .line 53
    :try_start_12
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v1

    .line 55
    sget-object v2, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :goto_1c
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_25
    move-exception p1

    goto :goto_2b

    :catchall_27
    move-exception p1

    goto :goto_41

    :catch_29
    move-exception p1

    move-object v2, v1

    .line 47
    :goto_2b
    :try_start_2b
    sget-object v3, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->TAG:Ljava/lang/String;

    const-string v4, "IOException in encodeCookie"

    invoke-static {v3, v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_3f

    if-eqz v2, :cond_3e

    .line 53
    :try_start_34
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception p1

    .line 55
    sget-object v2, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    :goto_3e
    return-object v1

    :catchall_3f
    move-exception p1

    move-object v1, v2

    :goto_41
    if-eqz v1, :cond_4d

    .line 53
    :try_start_43
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4d

    :catch_47
    move-exception v1

    .line 55
    sget-object v2, Lcom/franmontiel/persistentcookiejar/persistence/SerializableCookie;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_4d
    :goto_4d
    throw p1
.end method
