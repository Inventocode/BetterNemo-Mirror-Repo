.class public Lcom/qiniu/android/collect/UploadInfoReporter;
.super Ljava/lang/Object;
.source "UploadInfoReporter.java"


# static fields
.field private static instance:Lcom/qiniu/android/collect/UploadInfoReporter;


# instance fields
.field private X_Log_Client_Id:Ljava/lang/String;

.field private config:Lcom/qiniu/android/collect/ReportConfig;

.field private isReporting:Z

.field private lastReportTime:J

.field private recordDirectory:Ljava/io/File;

.field private recorderFile:Ljava/io/File;

.field private recorderTempFile:Ljava/io/File;

.field private transaction:Lcom/qiniu/android/http/request/RequestTransaction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/qiniu/android/collect/UploadInfoReporter;

    invoke-direct {v0}, Lcom/qiniu/android/collect/UploadInfoReporter;-><init>()V

    sput-object v0, Lcom/qiniu/android/collect/UploadInfoReporter;->instance:Lcom/qiniu/android/collect/UploadInfoReporter;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/qiniu/android/collect/ReportConfig;->getInstance()Lcom/qiniu/android/collect/ReportConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->config:Lcom/qiniu/android/collect/ReportConfig;

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->lastReportTime:J

    .line 28
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->config:Lcom/qiniu/android/collect/ReportConfig;

    iget-object v1, v1, Lcom/qiniu/android/collect/ReportConfig;->recordDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recordDirectory:Ljava/io/File;

    .line 29
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->config:Lcom/qiniu/android/collect/ReportConfig;

    iget-object v2, v2, Lcom/qiniu/android/collect/ReportConfig;->recordDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/qiniu.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderFile:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->config:Lcom/qiniu/android/collect/ReportConfig;

    iget-object v2, v2, Lcom/qiniu/android/collect/ReportConfig;->recordDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/qiniuTemp.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderTempFile:Ljava/io/File;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->isReporting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/collect/UploadInfoReporter;Ljava/lang/String;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/qiniu/android/collect/UploadInfoReporter;->saveReportJsonString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qiniu/android/collect/UploadInfoReporter;Ljava/lang/String;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/qiniu/android/collect/UploadInfoReporter;->reportToServerIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/qiniu/android/collect/UploadInfoReporter;J)J
    .registers 3

    .line 24
    iput-wide p1, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->lastReportTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/qiniu/android/collect/UploadInfoReporter;)Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->X_Log_Client_Id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/qiniu/android/collect/UploadInfoReporter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->X_Log_Client_Id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/qiniu/android/collect/UploadInfoReporter;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/qiniu/android/collect/UploadInfoReporter;->cleanTempLogFile()V

    return-void
.end method

.method static synthetic access$502(Lcom/qiniu/android/collect/UploadInfoReporter;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->isReporting:Z

    return p1
.end method

.method static synthetic access$600(Lcom/qiniu/android/collect/UploadInfoReporter;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/qiniu/android/collect/UploadInfoReporter;->destroyTransactionResource()V

    return-void
.end method

.method private checkReportAvailable()Z
    .registers 7

    .line 87
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->config:Lcom/qiniu/android/collect/ReportConfig;

    iget-boolean v1, v0, Lcom/qiniu/android/collect/ReportConfig;->isReportEnable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 90
    :cond_8
    iget-wide v3, v0, Lcom/qiniu/android/collect/ReportConfig;->maxRecordFileSize:J

    iget-wide v0, v0, Lcom/qiniu/android/collect/ReportConfig;->uploadThreshold:J

    cmp-long v5, v3, v0

    if-gtz v5, :cond_16

    const-string v0, "maxRecordFileSize must be larger than uploadThreshold"

    .line 91
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->e(Ljava/lang/String;)I

    return v2

    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private cleanTempLogFile()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 82
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_d
    return-void
.end method

.method private createUploadRequestTransaction(Ljava/lang/String;)Lcom/qiniu/android/http/request/RequestTransaction;
    .registers 5

    .line 229
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->config:Lcom/qiniu/android/collect/ReportConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 232
    :cond_6
    invoke-static {p1}, Lcom/qiniu/android/storage/UpToken;->parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;

    move-result-object p1

    if-nez p1, :cond_d

    return-object v1

    .line 236
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iget-object v1, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->config:Lcom/qiniu/android/collect/ReportConfig;

    iget-object v1, v1, Lcom/qiniu/android/collect/ReportConfig;->serverURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/qiniu/android/http/request/RequestTransaction;

    const-string v2, "sdkEmptyRegionId"

    invoke-direct {v1, v0, v2, p1}, Lcom/qiniu/android/http/request/RequestTransaction;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;)V

    iput-object v1, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->transaction:Lcom/qiniu/android/http/request/RequestTransaction;

    return-object v1
.end method

.method private destroyTransactionResource()V
    .registers 2

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->transaction:Lcom/qiniu/android/http/request/RequestTransaction;

    return-void
.end method

.method public static getInstance()Lcom/qiniu/android/collect/UploadInfoReporter;
    .registers 1

    .line 43
    sget-object v0, Lcom/qiniu/android/collect/UploadInfoReporter;->instance:Lcom/qiniu/android/collect/UploadInfoReporter;

    return-object v0
.end method

.method private getLogData()[B
    .registers 7

    .line 197
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderTempFile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    goto :goto_50

    .line 201
    :cond_10
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    .line 205
    :try_start_17
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderTempFile:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_20} :catch_4c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_48
    .catchall {:try_start_17 .. :try_end_20} :catchall_41

    .line 206
    :try_start_20
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 208
    new-array v0, v0, [B

    .line 209
    :goto_27
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    if-ltz v4, :cond_32

    const/4 v5, 0x0

    .line 210
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_27

    .line 212
    :cond_32
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_36} :catch_3f
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_36} :catch_3d
    .catchall {:try_start_20 .. :try_end_36} :catchall_3a

    .line 219
    :goto_36
    :try_start_36
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_50

    goto :goto_50

    :catchall_3a
    move-exception v0

    move-object v1, v2

    goto :goto_42

    :catch_3d
    nop

    goto :goto_49

    :catch_3f
    nop

    goto :goto_4d

    :catchall_41
    move-exception v0

    :goto_42
    if-eqz v1, :cond_47

    :try_start_44
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_47

    .line 223
    :catch_47
    :cond_47
    throw v0

    :catch_48
    move-object v2, v1

    :goto_49
    if-eqz v2, :cond_50

    goto :goto_36

    :catch_4c
    move-object v2, v1

    :goto_4d
    if-eqz v2, :cond_50

    goto :goto_36

    :catch_50
    :cond_50
    :goto_50
    return-object v1
.end method

.method private reportToServer(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->isReporting:Z

    .line 166
    invoke-direct {p0, p1}, Lcom/qiniu/android/collect/UploadInfoReporter;->createUploadRequestTransaction(Ljava/lang/String;)Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 171
    :cond_a
    invoke-direct {p0}, Lcom/qiniu/android/collect/UploadInfoReporter;->getLogData()[B

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 172
    array-length v2, v1

    if-nez v2, :cond_14

    goto :goto_1e

    .line 176
    :cond_14
    iget-object v2, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->X_Log_Client_Id:Ljava/lang/String;

    new-instance v3, Lcom/qiniu/android/collect/UploadInfoReporter$2;

    invoke-direct {v3, p0}, Lcom/qiniu/android/collect/UploadInfoReporter$2;-><init>(Lcom/qiniu/android/collect/UploadInfoReporter;)V

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/qiniu/android/http/request/RequestTransaction;->reportLog([BLjava/lang/String;ZLcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private reportToServerIfNeeded(Ljava/lang/String;)V
    .registers 12

    .line 142
    iget-boolean v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->isReporting:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 146
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 148
    iget-object v3, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderTempFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1a

    :goto_18
    const/4 v0, 0x1

    goto :goto_46

    .line 150
    :cond_1a
    iget-object v3, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    iget-object v3, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->config:Lcom/qiniu/android/collect/ReportConfig;

    iget-wide v7, v3, Lcom/qiniu/android/collect/ReportConfig;->uploadThreshold:J

    cmp-long v9, v5, v7

    if-gtz v9, :cond_3b

    iget-wide v5, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->lastReportTime:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_3b

    sub-long/2addr v1, v5

    iget-wide v5, v3, Lcom/qiniu/android/collect/ReportConfig;->interval:J

    const-wide/16 v7, 0x3c

    mul-long v5, v5, v7

    cmp-long v3, v1, v5

    if-lez v3, :cond_46

    .line 152
    :cond_3b
    iget-object v1, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderFile:Ljava/io/File;

    iget-object v2, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderTempFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_18

    :cond_46
    :goto_46
    if-eqz v0, :cond_4f

    .line 157
    iget-boolean v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->isReporting:Z

    if-nez v0, :cond_4f

    .line 158
    invoke-direct {p0, p1}, Lcom/qiniu/android/collect/UploadInfoReporter;->reportToServer(Ljava/lang/String;)V

    :cond_4f
    return-void
.end method

.method private saveReportJsonString(Ljava/lang/String;)V
    .registers 7

    .line 99
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recordDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recordDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 103
    :cond_11
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recordDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string p1, "recordDirectory is not a directory"

    .line 104
    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->e(Ljava/lang/String;)I

    return-void

    .line 108
    :cond_1f
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_35

    .line 110
    :try_start_27
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2d} :catch_30

    if-nez v0, :cond_35

    return-void

    :catch_30
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    .line 120
    :cond_35
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->config:Lcom/qiniu/android/collect/ReportConfig;

    iget-wide v2, v2, Lcom/qiniu/android/collect/ReportConfig;->maxRecordFileSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_44

    return-void

    :cond_44
    const/4 v0, 0x0

    .line 126
    :try_start_45
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/qiniu/android/collect/UploadInfoReporter;->recorderFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_4d} :catch_81
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4d} :catch_7a
    .catchall {:try_start_45 .. :try_end_4d} :catchall_73

    .line 127
    :try_start_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 128
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_68} :catch_71
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_68} :catch_6f
    .catchall {:try_start_4d .. :try_end_68} :catchall_6c

    .line 134
    :try_start_68
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_85

    goto :goto_85

    :catchall_6c
    move-exception p1

    move-object v0, v1

    goto :goto_74

    :catch_6f
    move-object v0, v1

    goto :goto_7b

    :catch_71
    move-object v0, v1

    goto :goto_82

    :catchall_73
    move-exception p1

    :goto_74
    if-eqz v0, :cond_79

    :try_start_76
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_79

    .line 138
    :catch_79
    :cond_79
    throw p1

    :catch_7a
    nop

    :goto_7b
    if-eqz v0, :cond_85

    .line 134
    :goto_7d
    :try_start_7d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_85

    goto :goto_85

    :catch_81
    nop

    :goto_82
    if-eqz v0, :cond_85

    goto :goto_7d

    :catch_85
    :cond_85
    :goto_85
    return-void
.end method


# virtual methods
.method public declared-synchronized report(Lcom/qiniu/android/collect/ReportItem;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_5

    .line 49
    monitor-exit p0

    return-void

    .line 52
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Lcom/qiniu/android/collect/ReportItem;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-direct {p0}, Lcom/qiniu/android/collect/UploadInfoReporter;->checkReportAvailable()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-nez p1, :cond_12

    goto :goto_1c

    .line 57
    :cond_12
    new-instance v0, Lcom/qiniu/android/collect/UploadInfoReporter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/qiniu/android/collect/UploadInfoReporter$1;-><init>(Lcom/qiniu/android/collect/UploadInfoReporter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qiniu/android/utils/AsyncRun;->runInBack(Ljava/lang/Runnable;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    .line 67
    monitor-exit p0

    return-void

    .line 54
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
