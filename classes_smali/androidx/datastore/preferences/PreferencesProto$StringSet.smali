.class public final Landroidx/datastore/preferences/PreferencesProto$StringSet;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "PreferencesProto.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/PreferencesProto$StringSet;",
        "Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$StringSet;

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/PreferencesProto$StringSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRINGS_FIELD_NUMBER:I = 0x1


# instance fields
.field private strings_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1743
    new-instance v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-direct {v0}, Landroidx/datastore/preferences/PreferencesProto$StringSet;-><init>()V

    .line 1746
    sput-object v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$StringSet;

    .line 1747
    const-class v1, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1400
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    .line 1401
    invoke-static {}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet;->strings_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$2300()Landroidx/datastore/preferences/PreferencesProto$StringSet;
    .registers 1

    .line 1395
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$StringSet;

    return-object v0
.end method

.method static synthetic access$2600(Landroidx/datastore/preferences/PreferencesProto$StringSet;Ljava/lang/Iterable;)V
    .registers 2

    .line 1395
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->addAllStrings(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllStrings(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1478
    invoke-direct {p0}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->ensureStringsIsMutable()V

    .line 1479
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet;->strings_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private ensureStringsIsMutable()V
    .registers 2

    .line 1442
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet;->strings_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1443
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet;->strings_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 1444
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->mutableCopy(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet;->strings_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    :cond_10
    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/PreferencesProto$StringSet;
    .registers 1

    .line 1752
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$StringSet;

    return-object v0
.end method

.method public static newBuilder()Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;
    .registers 1

    .line 1576
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1695
    sget-object p2, Landroidx/datastore/preferences/PreferencesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_52

    .line 1736
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13  #0x7
    return-object p3

    .line 1730
    :pswitch_14  #0x6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1715
    :pswitch_19  #0x5
    sget-object p1, Landroidx/datastore/preferences/PreferencesProto$StringSet;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_32

    .line 1717
    const-class p2, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    monitor-enter p2

    .line 1718
    :try_start_20
    sget-object p1, Landroidx/datastore/preferences/PreferencesProto$StringSet;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 1720
    new-instance p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroidx/datastore/preferences/PreferencesProto$StringSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 1723
    sput-object p1, Landroidx/datastore/preferences/PreferencesProto$StringSet;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 1725
    :cond_2d
    monitor-exit p2

    goto :goto_32

    :catchall_2f
    move-exception p1

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    return-object p1

    .line 1712
    :pswitch_33  #0x4
    sget-object p1, Landroidx/datastore/preferences/PreferencesProto$StringSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$StringSet;

    return-object p1

    :pswitch_36  #0x3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "strings_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 1708
    sget-object p3, Landroidx/datastore/preferences/PreferencesProto$StringSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1700
    :pswitch_46  #0x2
    new-instance p1, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;-><init>(Landroidx/datastore/preferences/PreferencesProto$1;)V

    return-object p1

    .line 1697
    :pswitch_4c  #0x1
    new-instance p1, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-direct {p1}, Landroidx/datastore/preferences/PreferencesProto$StringSet;-><init>()V

    return-object p1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4c  #00000001
        :pswitch_46  #00000002
        :pswitch_36  #00000003
        :pswitch_33  #00000004
        :pswitch_19  #00000005
        :pswitch_14  #00000006
        :pswitch_13  #00000007
    .end packed-switch
.end method

.method public getStringsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1411
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet;->strings_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object v0
.end method
