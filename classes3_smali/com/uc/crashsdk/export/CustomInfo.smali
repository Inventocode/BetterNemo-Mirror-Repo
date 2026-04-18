.class public Lcom/uc/crashsdk/export/CustomInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public mAddPvForNewDay:Z

.field public mAnrTraceStrategy:I

.field public mAppId:Ljava/lang/String;

.field public mAutoDeleteOldVersionStats:Z

.field public mAutoDetectLifeCycle:Z

.field public mBackupLogs:Z

.field public mCallJavaDefaultHandler:Z

.field public mCallNativeDefaultHandler:Z

.field public mCrashLogsFolderName:Ljava/lang/String;

.field public mCrashRestartInterval:I

.field public mDebug:Z

.field public mDisableBackgroundSignals:J

.field public mDisableSignals:J

.field public mDumpHprofDataForJavaOOM:Z

.field public mDumpUserSolibBuildId:Z

.field public mEnableStatReport:Z

.field public mEncryptLog:Z

.field public mFdDumpMinLimit:I

.field public mInfoSaveFrequency:I

.field public mInfoUpdateInterval:I

.field public mIsInternational:Z

.field public mJavaCrashLogFileName:Ljava/lang/String;

.field public mLogMaxBytesLimit:I

.field public mLogMaxUploadBytesLimit:I

.field public mLogsBackupPathName:Ljava/lang/String;

.field public mMaxAnrLogCountPerProcess:I

.field public mMaxAnrLogcatLineCount:I

.field public mMaxBuiltinLogFilesCount:I

.field public mMaxCustomLogCountPerTypePerDay:I

.field public mMaxCustomLogFilesCount:I

.field public mMaxJavaLogcatLineCount:I

.field public mMaxNativeLogcatLineCount:I

.field public mMaxUnexpLogcatLineCount:I

.field public mMaxUploadBuiltinLogCountPerDay:I

.field public mMaxUploadBytesPerDay:J

.field public mMaxUploadCustomLogCountPerDay:I

.field public mMonitorBattery:Z

.field public mNativeCrashLogFileName:Ljava/lang/String;

.field public mOmitJavaCrash:Z

.field public mOmitNativeCrash:Z

.field public mPrintStackInfos:Z

.field public mRenameFileToDefaultName:Z

.field public mReservedJavaFileHandleCount:I

.field public mReservedNativeFileHandleCount:I

.field public mReservedNativeMemoryBytes:J

.field public mSyncUploadLogs:Z

.field public mSyncUploadSetupCrashLogs:Z

.field public mTagFilesFolderName:Ljava/lang/String;

.field public mThreadsDumpMinLimit:I

.field public mUnexpCrashLogFileName:Ljava/lang/String;

.field public mUnexpDelayMillSeconds:I

.field public mUnexpSubTypes:I

.field public mZipLog:Z

.field public mZippedLogExtension:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CrashSDK"

    .line 9
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    const-string v1, "crashsdk/tags"

    .line 15
    iput-object v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mTagFilesFolderName:Ljava/lang/String;

    const-string v1, "crashsdk/logs"

    .line 17
    iput-object v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogsBackupPathName:Ljava/lang/String;

    const/16 v0, 0x14

    .line 23
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxBuiltinLogFilesCount:I

    const/16 v1, 0xa

    .line 24
    iput v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    const/16 v2, 0x5dc

    .line 26
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    const/16 v2, 0xbb8

    .line 27
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    const/16 v2, 0x1f4

    .line 28
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    const/16 v2, 0x3e8

    .line 29
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogcatLineCount:I

    const v2, 0xea60

    .line 31
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpDelayMillSeconds:I

    const/16 v2, 0x7d00

    .line 33
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    const/4 v2, 0x0

    .line 35
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    const/4 v3, 0x1

    .line 37
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    .line 39
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    .line 41
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    .line 42
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    .line 44
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    .line 46
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    .line 48
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    const-string v4, ".gz"

    .line 49
    iput-object v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    const/high16 v4, 0x100000

    .line 51
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    const v4, 0xc8000

    .line 52
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    const-wide/32 v4, 0x180000

    .line 53
    iput-wide v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    const/16 v4, 0x19

    .line 55
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBuiltinLogCountPerDay:I

    .line 56
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    const/4 v0, 0x6

    .line 57
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    const/4 v0, 0x3

    .line 60
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogCountPerProcess:I

    const/4 v4, -0x1

    .line 62
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    .line 64
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    .line 65
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    .line 67
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    .line 68
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    const/16 v4, 0x32

    .line 71
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoUpdateInterval:I

    .line 72
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoSaveFrequency:I

    const/16 v0, 0xf

    .line 75
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedJavaFileHandleCount:I

    .line 77
    iput v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeFileHandleCount:I

    const/16 v0, 0x384

    .line 80
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    const/16 v0, 0x12c

    .line 81
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    const-wide/32 v0, 0x300000

    .line 83
    iput-wide v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeMemoryBytes:J

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableSignals:J

    const-wide/16 v0, 0x4002

    .line 88
    iput-wide v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:J

    .line 90
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    .line 91
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    .line 94
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    .line 97
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    const/4 v0, 0x2

    .line 105
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAnrTraceStrategy:I

    .line 110
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    .line 111
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    .line 116
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    .line 121
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAddPvForNewDay:Z

    return-void
.end method

.method public constructor <init>(Lcom/uc/crashsdk/export/CustomInfo;)V
    .registers 8

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CrashSDK"

    .line 9
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    const-string v1, "crashsdk/tags"

    .line 15
    iput-object v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mTagFilesFolderName:Ljava/lang/String;

    const-string v1, "crashsdk/logs"

    .line 17
    iput-object v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogsBackupPathName:Ljava/lang/String;

    const/16 v0, 0x14

    .line 23
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxBuiltinLogFilesCount:I

    const/16 v1, 0xa

    .line 24
    iput v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    const/16 v2, 0x5dc

    .line 26
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    const/16 v2, 0xbb8

    .line 27
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    const/16 v2, 0x1f4

    .line 28
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    const/16 v2, 0x3e8

    .line 29
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogcatLineCount:I

    const v2, 0xea60

    .line 31
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpDelayMillSeconds:I

    const/16 v2, 0x7d00

    .line 33
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    const/4 v2, 0x0

    .line 35
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    const/4 v3, 0x1

    .line 37
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    .line 39
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    .line 41
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    .line 42
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    .line 44
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    .line 46
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    .line 48
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    const-string v4, ".gz"

    .line 49
    iput-object v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    const/high16 v4, 0x100000

    .line 51
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    const v4, 0xc8000

    .line 52
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    const-wide/32 v4, 0x180000

    .line 53
    iput-wide v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    const/16 v4, 0x19

    .line 55
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBuiltinLogCountPerDay:I

    .line 56
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    const/4 v0, 0x6

    .line 57
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    const/4 v0, 0x3

    .line 60
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogCountPerProcess:I

    const/4 v4, -0x1

    .line 62
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    .line 64
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    .line 65
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    .line 67
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    .line 68
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    const/16 v4, 0x32

    .line 71
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoUpdateInterval:I

    .line 72
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoSaveFrequency:I

    const/16 v0, 0xf

    .line 75
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedJavaFileHandleCount:I

    .line 77
    iput v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeFileHandleCount:I

    const/16 v0, 0x384

    .line 80
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    const/16 v0, 0x12c

    .line 81
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    const-wide/32 v0, 0x300000

    .line 83
    iput-wide v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeMemoryBytes:J

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableSignals:J

    const-wide/16 v0, 0x4002

    .line 88
    iput-wide v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:J

    .line 90
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    .line 91
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    .line 94
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    .line 97
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    const/4 v0, 0x2

    .line 105
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAnrTraceStrategy:I

    .line 110
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    .line 111
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    .line 116
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    .line 121
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAddPvForNewDay:Z

    .line 131
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    .line 134
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mTagFilesFolderName:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mTagFilesFolderName:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    .line 139
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mLogsBackupPathName:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogsBackupPathName:Ljava/lang/String;

    .line 141
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mMaxBuiltinLogFilesCount:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxBuiltinLogFilesCount:I

    .line 142
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    .line 144
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    .line 145
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    .line 146
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    .line 147
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogcatLineCount:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogcatLineCount:I

    .line 149
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpDelayMillSeconds:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpDelayMillSeconds:I

    .line 150
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    .line 152
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    .line 154
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    .line 155
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    .line 157
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    .line 158
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    .line 160
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    .line 162
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    .line 164
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    .line 165
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    .line 167
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    .line 168
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    .line 169
    iget-wide v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    iput-wide v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    .line 171
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogCountPerProcess:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogCountPerProcess:I

    .line 173
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBuiltinLogCountPerDay:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBuiltinLogCountPerDay:I

    .line 174
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    .line 175
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    .line 177
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    .line 179
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    .line 180
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    .line 182
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    .line 183
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    .line 185
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mInfoUpdateInterval:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoUpdateInterval:I

    .line 186
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mInfoSaveFrequency:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoSaveFrequency:I

    .line 188
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mReservedJavaFileHandleCount:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedJavaFileHandleCount:I

    .line 189
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeFileHandleCount:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeFileHandleCount:I

    .line 191
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    .line 192
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    .line 194
    iget-wide v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeMemoryBytes:J

    iput-wide v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeMemoryBytes:J

    .line 196
    iget-wide v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mDisableSignals:J

    iput-wide v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableSignals:J

    .line 197
    iget-wide v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:J

    iput-wide v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:J

    .line 199
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    .line 200
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    .line 202
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    .line 203
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    .line 204
    iget v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mAnrTraceStrategy:I

    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAnrTraceStrategy:I

    .line 206
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    .line 207
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    .line 209
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    .line 210
    iget-boolean p1, p1, Lcom/uc/crashsdk/export/CustomInfo;->mAddPvForNewDay:Z

    iput-boolean p1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAddPvForNewDay:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CrashSDK"

    .line 9
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    const-string v1, "crashsdk/tags"

    .line 15
    iput-object v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mTagFilesFolderName:Ljava/lang/String;

    const-string v1, "crashsdk/logs"

    .line 17
    iput-object v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogsBackupPathName:Ljava/lang/String;

    const/16 v0, 0x14

    .line 23
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxBuiltinLogFilesCount:I

    const/16 v1, 0xa

    .line 24
    iput v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    const/16 v2, 0x5dc

    .line 26
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    const/16 v2, 0xbb8

    .line 27
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    const/16 v2, 0x1f4

    .line 28
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    const/16 v2, 0x3e8

    .line 29
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogcatLineCount:I

    const v2, 0xea60

    .line 31
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpDelayMillSeconds:I

    const/16 v2, 0x7d00

    .line 33
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    const/4 v2, 0x0

    .line 35
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    const/4 v3, 0x1

    .line 37
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    .line 39
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    .line 41
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    .line 42
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    .line 44
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    .line 46
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    .line 48
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    const-string v4, ".gz"

    .line 49
    iput-object v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    const/high16 v4, 0x100000

    .line 51
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    const v4, 0xc8000

    .line 52
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    const-wide/32 v4, 0x180000

    .line 53
    iput-wide v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    const/16 v4, 0x19

    .line 55
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBuiltinLogCountPerDay:I

    .line 56
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    const/4 v0, 0x6

    .line 57
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    const/4 v0, 0x3

    .line 60
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogCountPerProcess:I

    const/4 v4, -0x1

    .line 62
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    .line 64
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    .line 65
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    .line 67
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    .line 68
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    const/16 v4, 0x32

    .line 71
    iput v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoUpdateInterval:I

    .line 72
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoSaveFrequency:I

    const/16 v0, 0xf

    .line 75
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedJavaFileHandleCount:I

    .line 77
    iput v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeFileHandleCount:I

    const/16 v0, 0x384

    .line 80
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    const/16 v0, 0x12c

    .line 81
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    const-wide/32 v0, 0x300000

    .line 83
    iput-wide v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeMemoryBytes:J

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableSignals:J

    const-wide/16 v0, 0x4002

    .line 88
    iput-wide v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:J

    .line 90
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    .line 91
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    .line 94
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    .line 97
    iput-boolean v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    const/4 v0, 0x2

    .line 105
    iput v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAnrTraceStrategy:I

    .line 110
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    .line 111
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    .line 116
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    .line 121
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAddPvForNewDay:Z

    .line 127
    iput-object p1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    return-void
.end method
