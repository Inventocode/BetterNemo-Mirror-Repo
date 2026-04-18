.class public Lcom/umeng/commonsdk/debug/UMLogCommon;
.super Ljava/lang/Object;
.source "UMLogCommon.java"


# static fields
.field public static final SC_10001:Ljava/lang/String;

.field public static final SC_10002:Ljava/lang/String;

.field public static final SC_10003:Ljava/lang/String; = "统计SDK初始化成功"

.field public static final SC_10004:Ljava/lang/String; = "PUSH AppKey设置成功"

.field public static final SC_10005:Ljava/lang/String; = "PUSH Channel设置成功"

.field public static final SC_10006:Ljava/lang/String; = "Share AppKey设置成功"

.field public static final SC_10007:Ljava/lang/String;

.field public static final SC_10008:Ljava/lang/String; = "AppKey改变!!!"

.field public static final SC_10009:Ljava/lang/String; = "PUSH Secret设置成功"

.field public static final SC_10010:Ljava/lang/String; = "错误分析SDK初始化成功"

.field public static final SC_10011:Ljava/lang/String; = "请注意：您init接口中设置的AppKey是@，manifest中设置的AppKey是#，init接口设置的AppKey会覆盖manifest中设置的AppKey"

.field public static final SC_10012:Ljava/lang/String; = "基础组件库完整性自检通过。"

.field public static final SC_10013:Ljava/lang/String; = "基础组件库完整性自检未通过！请检查应用混淆配置。"

.field public static final SC_10014:Ljava/lang/String; = "APM SDK初始化成功"

.field public static final SC_10015:Ljava/lang/String; = "基础组件库9.3.x版本仅支持6.2.0及更高版本推送SDK、7.1.0及更高版本分享SDK。"

.field public static final SC_10016:Ljava/lang/String; = "传入key或value为空，setModuleTag调用无效，请检查传入参数。"

.field public static final SC_10017:Ljava/lang/String; = "传入key长度超限，setModuleTag调用无效，请检查传入参数。"

.field public static final SC_10018:Ljava/lang/String; = "传入value长度超限，setModuleTag调用无效，请检查传入参数。"

.field public static final SC_10019:Ljava/lang/String; = "传入业务类型参数错误，setModuleTag调用无效。"

.field public static final SC_10020:Ljava/lang/String; = "传入key为空，deleteModuleTag调用无效，请检查传入参数。"

.field public static final SC_10021:Ljava/lang/String; = "传入key长度超限，deleteModuleTag调用无效，请检查传入参数。"

.field public static final SC_10022:Ljava/lang/String; = "传入业务类型参数错误，deleteModuleTag调用无效。"

.field public static final SC_10023:Ljava/lang/String; = "传入key-value键值对个数已达30个，setModuleTag调用无效。"

.field public static final SC_10024:Ljava/lang/String; = "传入业务类型枚举值不能为null，setModuleTag调用无效，请检查传入参数。"

.field public static final SC_10025:Ljava/lang/String; = "传入业务类型枚举值不能为null，deleteModuleTag调用无效，请检查传入参数。"

.field public static final SC_10026:Ljava/lang/String; = "检测到SDK初始化过程遗漏UMConfigure.preInit函数，请参考【友盟+】合规指南: https://developer.umeng.com/docs/119267/detail/182050"

.field public static final SC_10028:Ljava/lang/String; = "检测到未调用隐私授权API，详情见：https://developer.umeng.com/docs/119267/detail/182050"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "不能在非主进程进行初始化|目前只能在主进程进行初始化，如何正确初始化请详见地址："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "67292"

    .line 10
    invoke-static {v1}, Lcom/umeng/commonsdk/debug/UMLogUtils;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/debug/UMLogCommon;->SC_10001:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "不能在非Application的onCreate方法中进行初始化|目前只能在Application的onCreate方法中进行初始化，如何正确初始化请详见地址："

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {v1}, Lcom/umeng/commonsdk/debug/UMLogUtils;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/debug/UMLogCommon;->SC_10002:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppKey不能为空|您必须正确设置AppKey，如何正确初始化请详见地址："

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {v1}, Lcom/umeng/commonsdk/debug/UMLogUtils;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/debug/UMLogCommon;->SC_10007:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
