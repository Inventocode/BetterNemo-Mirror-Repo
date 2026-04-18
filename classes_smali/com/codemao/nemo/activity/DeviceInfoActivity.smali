.class public final Lcom/codemao/nemo/activity/DeviceInfoActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "DeviceInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/activity/DeviceInfoActivity$Companion;,
        Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/activity/DeviceInfoActivity$Companion;


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$KPIuKEZsVxkbNVr0P11oFVZkGTw(Lcom/codemao/nemo/activity/DeviceInfoActivity;Landroid/net/Uri;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->savePicture$lambda$5$lambda$4(Lcom/codemao/nemo/activity/DeviceInfoActivity;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M8FCHoluKyW1mB3YMxK6fCkTU5w(Lcom/codemao/nemo/activity/DeviceInfoActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->onCreate$lambda$0(Lcom/codemao/nemo/activity/DeviceInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wqd36h44DfCBT-8e9bwrYBmZfDU(Lcom/codemao/nemo/activity/DeviceInfoActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->savePicture$lambda$5(Lcom/codemao/nemo/activity/DeviceInfoActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WsUWfNNsLFGtdTDBZ5fd0y_SUyU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->onCreate$lambda$3$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k6iYlFUAC5Wln0brY7AUD2Ja73w(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->onCreate$lambda$3$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xi2TRNF8xB757XRhxrDn9WvdrPI(Lcom/codemao/nemo/activity/DeviceInfoActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->onCreate$lambda$3(Lcom/codemao/nemo/activity/DeviceInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/activity/DeviceInfoActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/activity/DeviceInfoActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->Companion:Lcom/codemao/nemo/activity/DeviceInfoActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->data:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$savePicture(Lcom/codemao/nemo/activity/DeviceInfoActivity;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->savePicture()V

    return-void
.end method

.method private final checkRecordPermission()Z
    .registers 3

    const/4 v0, 0x1

    .line 205
    :try_start_1
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    .line 206
    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private final getAppVersionText()Ljava/lang/String;
    .registers 6

    .line 277
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "V%1s%2s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(locale, format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCoreNum()I
    .registers 2

    .line 273
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method private final getOsRelease()Ljava/lang/String;
    .registers 3

    .line 255
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "RELEASE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getPhoneModelString()Ljava/lang/String;
    .registers 3

    .line 266
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1b

    :catch_19
    const-string v0, "UNKNOW"

    :goto_1b
    return-object v0
.end method

.method private final getRAMInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "activity"

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 193
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/ActivityManager;

    .line 195
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 196
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 197
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 198
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getRequestedPermission()Ljava/lang/String;
    .registers 6

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    :try_start_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_6f

    .line 217
    invoke-direct {p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->checkRecordPermission()Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_76

    const-string v3, "、"

    if-eqz v2, :cond_1e

    :try_start_15
    const-string/jumbo v2, "麦克风"

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_1e
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v2

    const-string v4, "android.permission.CAMERA"

    .line 221
    invoke-virtual {v2, v4}, Landroid/app/Application;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_33

    const-string/jumbo v2, "摄像头"

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v4, 0x21

    if-lt v1, v4, :cond_3b

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    .line 229
    :cond_3b
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    .line 230
    invoke-virtual {v1, v2}, Landroid/app/Application;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_51

    .line 231
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 232
    invoke-virtual {v1, v2}, Landroid/app/Application;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5a

    :cond_51
    const-string/jumbo v1, "存储"

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_5a
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_63

    const/4 v1, 0x1

    goto :goto_64

    :cond_63
    const/4 v1, 0x0

    :goto_64
    if-eqz v1, :cond_7c

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_7c

    :cond_6f
    const-string/jumbo v1, "麦克风,摄像头,存储"

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_75} :catch_76

    goto :goto_7c

    :catch_76
    const-string/jumbo v1, "获取权限失败"

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_7c
    :goto_7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "builder.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8e

    const-string/jumbo v0, "无权限"

    :cond_8e
    return-object v0
.end method

.method private final getStorageInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 177
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 178
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    .line 181
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    mul-long v2, v2, v4

    .line 183
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long v0, v0, v4

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final intData()V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->data:Ljava/util/List;

    .line 138
    new-instance v1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    .line 140
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 141
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_18
    const-string/jumbo v2, "未登录"

    :goto_1b
    const-string/jumbo v3, "用户ID："

    .line 138
    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->data:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    invoke-direct {p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->getAppVersionText()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "软件版本号："

    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->data:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    invoke-direct {p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->getOsRelease()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "系统版本号："

    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->data:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    invoke-direct {p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->getPhoneModelString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "手机型号："

    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->data:Ljava/util/List;

    .line 151
    new-instance v1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    .line 153
    invoke-static {p0}, Lcom/codemao/nemo/http/NetUtils;->getNetType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "当前网络："

    .line 151
    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->data:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    invoke-direct {p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->getRequestedPermission()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "已开启的权限："

    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->data:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->getCoreNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x6838

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CPU逻辑核心数："

    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->data:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    invoke-direct {p0, p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->getRAMInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "内存使用情况："

    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->data:Ljava/util/List;

    .line 160
    new-instance v1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    .line 162
    invoke-direct {p0, p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->getStorageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "内存容量使用情况："

    .line 160
    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->data:Ljava/util/List;

    .line 166
    new-instance v1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/codemao/nemo/util/TimeUtil;->getDateTime(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "当前时间："

    .line 166
    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/codemao/nemo/activity/DeviceInfoActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method private static final onCreate$lambda$3(Lcom/codemao/nemo/activity/DeviceInfoActivity;Landroid/view/View;)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 67
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_1b

    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    .line 73
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 77
    :cond_1b
    sget-object v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    .line 80
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v1, "TYPE_SAVE_PHOTO"

    .line 77
    invoke-virtual {v0, p0, v1, p1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionWithRxpermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 81
    sget-object v0, Lcom/codemao/nemo/activity/DeviceInfoActivity$onCreate$2$disposable$1;->INSTANCE:Lcom/codemao/nemo/activity/DeviceInfoActivity$onCreate$2$disposable$1;

    new-instance v1, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 97
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 98
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 99
    new-instance v0, Lcom/codemao/nemo/activity/DeviceInfoActivity$onCreate$2$disposable$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity$onCreate$2$disposable$2;-><init>(Lcom/codemao/nemo/activity/DeviceInfoActivity;)V

    new-instance p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private static final onCreate$lambda$3$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final onCreate$lambda$3$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final savePicture()V
    .registers 2

    .line 115
    new-instance v0, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/nemo/activity/DeviceInfoActivity;)V

    invoke-static {v0}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final savePicture$lambda$5(Lcom/codemao/nemo/activity/DeviceInfoActivity;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    const/16 v5, 0x4b

    .line 120
    invoke-static {v2, p0, v3, v4, v5}, Lcom/codemao/nemo/util/SaveImageUtilsKt;->saveToAlbum(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v4

    .line 121
    :cond_38
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 122
    new-instance v0, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v4}, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/nemo/activity/DeviceInfoActivity;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final savePicture$lambda$5$lambda$4(Lcom/codemao/nemo/activity/DeviceInfoActivity;Landroid/net/Uri;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_b

    const-string/jumbo p1, "保存成功"

    goto :goto_e

    :cond_b
    const-string/jumbo p1, "保存失败"

    .line 123
    :goto_e
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0045

    return v0
.end method

.method public final getUserId()J
    .registers 3

    .line 259
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_16

    .line 260
    :cond_9
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "userInfoVO.id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_16
    return-wide v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "设备检测页面"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 57
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-direct {p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->intData()V

    const p1, 0x7f0a05ed

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_14

    goto :goto_1e

    .line 60
    :cond_14
    new-instance v0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->data:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    :goto_1e
    iget-object p1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_23

    goto :goto_2d

    :cond_23
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_2d
    const p1, 0x7f0a037b

    .line 62
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/DeviceInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00ec

    .line 63
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/DeviceInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
