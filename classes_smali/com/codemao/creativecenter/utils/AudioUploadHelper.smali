.class public Lcom/codemao/creativecenter/utils/AudioUploadHelper;
.super Ljava/lang/Object;
.source "AudioUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioMoveListener;,
        Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$6Jia6aOtwPj2EjZ1YdXUD5iS7tI(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Ljava/lang/String;Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->lambda$moveFileToPath$0(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Ljava/lang/String;Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7PMpUhFcaX3E4hvGRfu05I5RIrU(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->lambda$queryAllAudio$2(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Ic7gTsOUCfCW60qFkU-Sut8xIo(Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioMoveListener;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->lambda$moveFileToPath$1(Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioMoveListener;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z67aq1nJ5q_oAKkEoW_VY4OuSyI(Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->lambda$queryAllAudio$3(Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nE_YqZnrJSrY4AHxUkcq_p4Y9k0(Ljava/lang/Throwable;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->lambda$queryAllAudio$4(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static copyContentToFile(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Ljava/lang/String;Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    .line 50
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v1, p0, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioUri:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    if-nez p2, :cond_e

    return v0

    .line 54
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/record/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->uuid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->extName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 55
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_44

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_44
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 62
    :goto_4d
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_58

    .line 63
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_4d

    .line 65
    :cond_58
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 66
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5e} :catch_60

    const/4 p0, 0x1

    return p0

    :catch_60
    return v0
.end method

.method private static doQueryAudios(Landroid/database/Cursor;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/bean/MaterialUploadBean;",
            ">;"
        }
    .end annotation

    const-string v0, "mp3"

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    :cond_7
    :goto_7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_86

    :try_start_d
    const-string v2, "_id"

    .line 105
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "_size"

    .line 106
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "mime_type"

    .line 107
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_display_name"

    .line 108
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3d

    const-string v7, ""

    .line 112
    :cond_3d
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "audio/mpeg"

    .line 113
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v8, 0x0

    if-eqz v3, :cond_63

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    cmp-long v3, v4, v8

    if-lez v3, :cond_63

    .line 114
    new-instance v3, Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v3, v7, v0, v2, v10}, Lcom/codemao/creativecenter/bean/MaterialUploadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Long;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_63
    const-string v3, "audio/aac"

    .line 116
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_69} :catch_84

    const-string v6, "aac"

    if-nez v3, :cond_73

    :try_start_6d
    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_73
    cmp-long v3, v4, v8

    if-lez v3, :cond_7

    .line 117
    new-instance v3, Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v7, v6, v2, v4}, Lcom/codemao/creativecenter/bean/MaterialUploadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Long;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_83} :catch_84

    goto :goto_7

    :catch_84
    nop

    goto :goto_7

    .line 122
    :cond_86
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private static synthetic lambda$moveFileToPath$0(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Ljava/lang/String;Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1, p2}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->copyContentToFile(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    .line 39
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p3, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$moveFileToPath$1(Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioMoveListener;Ljava/lang/Boolean;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioMoveListener;->onAudioMove(Z)V

    :cond_9
    return-void
.end method

.method private static synthetic lambda$queryAllAudio$2(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->queryAllAudio(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 78
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->doQueryAudios(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_1c

    .line 80
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cursor is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :goto_1c
    return-void
.end method

.method private static synthetic lambda$queryAllAudio$3(Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 85
    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;->onAudioScan(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method private static synthetic lambda$queryAllAudio$4(Ljava/lang/Throwable;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static moveFileToPath(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Ljava/lang/String;Landroid/content/Context;Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioMoveListener;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 40
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1, p3}, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioMoveListener;)V

    .line 41
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private static queryAllAudio(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 7

    .line 92
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_display_name"

    const-string v2, "date_added"

    const-string v3, "_id"

    const-string v4, "_size"

    const-string v5, "mime_type"

    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date_added DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static queryAllAudio(Landroid/content/Context;Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 82
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;)V

    sget-object p1, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda4;->INSTANCE:Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda4;

    .line 83
    invoke-virtual {p0, v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
