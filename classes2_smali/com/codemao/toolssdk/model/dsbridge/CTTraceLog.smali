.class public final Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;
.super Ljava/lang/Object;
.source "CTTraceLog.kt"


# instance fields
.field private callFailed:Z

.field private callStartTime:J

.field private connectDurationMs:J

.field private connectException:Ljava/lang/String;

.field private connectFailed:Z

.field private connectFailedDurationMs:J

.field private connectStartTime:J

.field private dnsDurationMs:J

.field private dnsException:Ljava/lang/String;

.field private dnsFailed:Z

.field private dnsStartTime:J

.field private exception:Ljava/lang/String;

.field private httpError:Z

.field private httpErrorMessage:Ljava/lang/String;

.field private requestSuccess:Z

.field private responseCode:I

.field private responseHeaderDurationMs:J

.field private responseStartTime:J

.field private totalDurationMs:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 33

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v30, 0xfffff

    const/16 v31, 0x0

    invoke-direct/range {v0 .. v31}, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;-><init>(Ljava/lang/String;JJJJJJLjava/lang/String;JJIJZLjava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJJJJLjava/lang/String;JJIJZLjava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;Z)V
    .registers 33

    move-object v0, p0

    move-object v1, p1

    const-string v2, "url"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->url:Ljava/lang/String;

    move-wide v1, p2

    .line 8
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callStartTime:J

    move-wide v1, p4

    .line 10
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsStartTime:J

    move-wide v1, p6

    .line 11
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsDurationMs:J

    move-wide v1, p8

    .line 13
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectStartTime:J

    move-wide v1, p10

    .line 14
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectDurationMs:J

    move-wide v1, p12

    .line 15
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailedDurationMs:J

    move-object/from16 v1, p14

    .line 17
    iput-object v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectException:Ljava/lang/String;

    move-wide/from16 v1, p15

    .line 19
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseStartTime:J

    move-wide/from16 v1, p17

    .line 20
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseHeaderDurationMs:J

    move/from16 v1, p19

    .line 22
    iput v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseCode:I

    move-wide/from16 v1, p20

    .line 24
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->totalDurationMs:J

    move/from16 v1, p22

    .line 26
    iput-boolean v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callFailed:Z

    move-object/from16 v1, p23

    .line 28
    iput-object v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    move/from16 v1, p24

    .line 31
    iput-boolean v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsFailed:Z

    move-object/from16 v1, p25

    .line 32
    iput-object v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsException:Ljava/lang/String;

    move/from16 v1, p26

    .line 33
    iput-boolean v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailed:Z

    move/from16 v1, p27

    .line 34
    iput-boolean v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpError:Z

    move-object/from16 v1, p28

    .line 35
    iput-object v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpErrorMessage:Ljava/lang/String;

    move/from16 v1, p29

    .line 36
    iput-boolean v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->requestSuccess:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJJJJJLjava/lang/String;JJIJZLjava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 61

    move/from16 v0, p30

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    const-string v1, ""

    goto :goto_b

    :cond_9
    move-object/from16 v1, p1

    :goto_b
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_12

    const-wide/16 v5, 0x0

    goto :goto_14

    :cond_12
    move-wide/from16 v5, p2

    :goto_14
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1b

    const-wide/16 v7, 0x0

    goto :goto_1d

    :cond_1b
    move-wide/from16 v7, p4

    :goto_1d
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_24

    const-wide/16 v9, 0x0

    goto :goto_26

    :cond_24
    move-wide/from16 v9, p6

    :goto_26
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_2d

    const-wide/16 v11, 0x0

    goto :goto_2f

    :cond_2d
    move-wide/from16 v11, p8

    :goto_2f
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_36

    const-wide/16 v13, 0x0

    goto :goto_38

    :cond_36
    move-wide/from16 v13, p10

    :goto_38
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_3f

    const-wide/16 v15, 0x0

    goto :goto_41

    :cond_3f
    move-wide/from16 v15, p12

    :goto_41
    and-int/lit16 v2, v0, 0x80

    const/16 v17, 0x0

    if-eqz v2, :cond_4a

    move-object/from16 v2, v17

    goto :goto_4c

    :cond_4a
    move-object/from16 v2, p14

    :goto_4c
    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_53

    const-wide/16 v3, 0x0

    goto :goto_55

    :cond_53
    move-wide/from16 v3, p15

    :goto_55
    move-wide/from16 v20, v3

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_5e

    const-wide/16 v3, 0x0

    goto :goto_60

    :cond_5e
    move-wide/from16 v3, p17

    :goto_60
    move-wide/from16 v22, v3

    and-int/lit16 v3, v0, 0x400

    if-eqz v3, :cond_68

    const/4 v3, 0x0

    goto :goto_6a

    :cond_68
    move/from16 v3, p19

    :goto_6a
    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_71

    const-wide/16 v18, 0x0

    goto :goto_73

    :cond_71
    move-wide/from16 v18, p20

    :goto_73
    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_79

    const/4 v4, 0x0

    goto :goto_7b

    :cond_79
    move/from16 v4, p22

    :goto_7b
    move/from16 p31, v4

    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_84

    move-object/from16 v4, v17

    goto :goto_86

    :cond_84
    move-object/from16 v4, p23

    :goto_86
    move-object/from16 v24, v4

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_8e

    const/4 v4, 0x0

    goto :goto_90

    :cond_8e
    move/from16 v4, p24

    :goto_90
    const v25, 0x8000

    and-int v25, v0, v25

    if-eqz v25, :cond_9a

    move-object/from16 v25, v17

    goto :goto_9c

    :cond_9a
    move-object/from16 v25, p25

    :goto_9c
    const/high16 v26, 0x10000

    and-int v26, v0, v26

    if-eqz v26, :cond_a5

    const/16 v26, 0x0

    goto :goto_a7

    :cond_a5
    move/from16 v26, p26

    :goto_a7
    const/high16 v27, 0x20000

    and-int v27, v0, v27

    if-eqz v27, :cond_b0

    const/16 v27, 0x0

    goto :goto_b2

    :cond_b0
    move/from16 v27, p27

    :goto_b2
    const/high16 v28, 0x40000

    and-int v28, v0, v28

    if-eqz v28, :cond_b9

    goto :goto_bb

    :cond_b9
    move-object/from16 v17, p28

    :goto_bb
    const/high16 v28, 0x80000

    and-int v0, v0, v28

    if-eqz v0, :cond_c3

    const/4 v0, 0x0

    goto :goto_c5

    :cond_c3
    move/from16 v0, p29

    :goto_c5
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-wide/from16 p3, v5

    move-wide/from16 p5, v7

    move-wide/from16 p7, v9

    move-wide/from16 p9, v11

    move-wide/from16 p11, v13

    move-wide/from16 p13, v15

    move-object/from16 p15, v2

    move-wide/from16 p16, v20

    move-wide/from16 p18, v22

    move/from16 p20, v3

    move-wide/from16 p21, v18

    move/from16 p23, p31

    move-object/from16 p24, v24

    move/from16 p25, v4

    move-object/from16 p26, v25

    move/from16 p27, v26

    move/from16 p28, v27

    move-object/from16 p29, v17

    move/from16 p30, v0

    .line 5
    invoke-direct/range {p1 .. p30}, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;-><init>(Ljava/lang/String;JJJJJJLjava/lang/String;JJIJZLjava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;Ljava/lang/String;JJJJJJLjava/lang/String;JJIJZLjava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;ZILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;
    .registers 49

    move-object/from16 v0, p0

    move/from16 v1, p30

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->url:Ljava/lang/String;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-wide v3, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callStartTime:J

    goto :goto_16

    :cond_14
    move-wide/from16 v3, p2

    :goto_16
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1d

    iget-wide v5, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsStartTime:J

    goto :goto_1f

    :cond_1d
    move-wide/from16 v5, p4

    :goto_1f
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_26

    iget-wide v7, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsDurationMs:J

    goto :goto_28

    :cond_26
    move-wide/from16 v7, p6

    :goto_28
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_2f

    iget-wide v9, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectStartTime:J

    goto :goto_31

    :cond_2f
    move-wide/from16 v9, p8

    :goto_31
    and-int/lit8 v11, v1, 0x20

    if-eqz v11, :cond_38

    iget-wide v11, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectDurationMs:J

    goto :goto_3a

    :cond_38
    move-wide/from16 v11, p10

    :goto_3a
    and-int/lit8 v13, v1, 0x40

    if-eqz v13, :cond_41

    iget-wide v13, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailedDurationMs:J

    goto :goto_43

    :cond_41
    move-wide/from16 v13, p12

    :goto_43
    and-int/lit16 v15, v1, 0x80

    if-eqz v15, :cond_4a

    iget-object v15, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectException:Ljava/lang/String;

    goto :goto_4c

    :cond_4a
    move-object/from16 v15, p14

    :goto_4c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x100

    move-wide/from16 p12, v13

    if-eqz v15, :cond_57

    iget-wide v13, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseStartTime:J

    goto :goto_59

    :cond_57
    move-wide/from16 v13, p15

    :goto_59
    and-int/lit16 v15, v1, 0x200

    move-wide/from16 p15, v13

    if-eqz v15, :cond_62

    iget-wide v13, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseHeaderDurationMs:J

    goto :goto_64

    :cond_62
    move-wide/from16 v13, p17

    :goto_64
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_6b

    iget v15, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseCode:I

    goto :goto_6d

    :cond_6b
    move/from16 v15, p19

    :goto_6d
    move/from16 p19, v15

    and-int/lit16 v15, v1, 0x800

    move-wide/from16 p17, v13

    if-eqz v15, :cond_78

    iget-wide v13, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->totalDurationMs:J

    goto :goto_7a

    :cond_78
    move-wide/from16 v13, p20

    :goto_7a
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_81

    iget-boolean v15, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callFailed:Z

    goto :goto_83

    :cond_81
    move/from16 v15, p22

    :goto_83
    move/from16 p22, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_8c

    iget-object v15, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    goto :goto_8e

    :cond_8c
    move-object/from16 v15, p23

    :goto_8e
    move-object/from16 p23, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_97

    iget-boolean v15, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsFailed:Z

    goto :goto_99

    :cond_97
    move/from16 v15, p24

    :goto_99
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p24, v15

    if-eqz v16, :cond_a5

    iget-object v15, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsException:Ljava/lang/String;

    goto :goto_a7

    :cond_a5
    move-object/from16 v15, p25

    :goto_a7
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_b2

    iget-boolean v15, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailed:Z

    goto :goto_b4

    :cond_b2
    move/from16 v15, p26

    :goto_b4
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p26, v15

    if-eqz v16, :cond_bf

    iget-boolean v15, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpError:Z

    goto :goto_c1

    :cond_bf
    move/from16 v15, p27

    :goto_c1
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move/from16 p27, v15

    if-eqz v16, :cond_cc

    iget-object v15, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpErrorMessage:Ljava/lang/String;

    goto :goto_ce

    :cond_cc
    move-object/from16 v15, p28

    :goto_ce
    const/high16 v16, 0x80000

    and-int v1, v1, v16

    if-eqz v1, :cond_d7

    iget-boolean v1, v0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->requestSuccess:Z

    goto :goto_d9

    :cond_d7
    move/from16 v1, p29

    :goto_d9
    move-object/from16 p1, v2

    move-wide/from16 p2, v3

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    move-wide/from16 p8, v9

    move-wide/from16 p10, v11

    move-wide/from16 p20, v13

    move-object/from16 p28, v15

    move/from16 p29, v1

    invoke-virtual/range {p0 .. p29}, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->copy(Ljava/lang/String;JJJJJJLjava/lang/String;JJIJZLjava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;Z)Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseHeaderDurationMs:J

    return-wide v0
.end method

.method public final component11()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseCode:I

    return v0
.end method

.method public final component12()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->totalDurationMs:J

    return-wide v0
.end method

.method public final component13()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callFailed:Z

    return v0
.end method

.method public final component14()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsFailed:Z

    return v0
.end method

.method public final component16()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsException:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailed:Z

    return v0
.end method

.method public final component18()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpError:Z

    return v0
.end method

.method public final component19()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callStartTime:J

    return-wide v0
.end method

.method public final component20()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->requestSuccess:Z

    return v0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsStartTime:J

    return-wide v0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsDurationMs:J

    return-wide v0
.end method

.method public final component5()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectStartTime:J

    return-wide v0
.end method

.method public final component6()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectDurationMs:J

    return-wide v0
.end method

.method public final component7()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailedDurationMs:J

    return-wide v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectException:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseStartTime:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;JJJJJJLjava/lang/String;JJIJZLjava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;Z)Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;
    .registers 62

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-object/from16 v14, p14

    move-wide/from16 v15, p15

    move-wide/from16 v17, p17

    move/from16 v19, p19

    move-wide/from16 v20, p20

    move/from16 v22, p22

    move-object/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move-object/from16 v28, p28

    move/from16 v29, p29

    const-string v0, "url"

    move-object/from16 v30, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v31, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;

    move-object/from16 v0, v31

    invoke-direct/range {v0 .. v29}, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;-><init>(Ljava/lang/String;JJJJJJLjava/lang/String;JJIJZLjava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;Z)V

    return-object v31
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callStartTime:J

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callStartTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsStartTime:J

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsStartTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_29

    return v2

    :cond_29
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsDurationMs:J

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsDurationMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_32

    return v2

    :cond_32
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectStartTime:J

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectStartTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3b

    return v2

    :cond_3b
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectDurationMs:J

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectDurationMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_44

    return v2

    :cond_44
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailedDurationMs:J

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailedDurationMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4d

    return v2

    :cond_4d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectException:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectException:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    return v2

    :cond_58
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseStartTime:J

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseStartTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_61

    return v2

    :cond_61
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseHeaderDurationMs:J

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseHeaderDurationMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6a

    return v2

    :cond_6a
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseCode:I

    iget v3, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseCode:I

    if-eq v1, v3, :cond_71

    return v2

    :cond_71
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->totalDurationMs:J

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->totalDurationMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7a

    return v2

    :cond_7a
    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callFailed:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callFailed:Z

    if-eq v1, v3, :cond_81

    return v2

    :cond_81
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    return v2

    :cond_8c
    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsFailed:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsFailed:Z

    if-eq v1, v3, :cond_93

    return v2

    :cond_93
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsException:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsException:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    return v2

    :cond_9e
    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailed:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailed:Z

    if-eq v1, v3, :cond_a5

    return v2

    :cond_a5
    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpError:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpError:Z

    if-eq v1, v3, :cond_ac

    return v2

    :cond_ac
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpErrorMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpErrorMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    return v2

    :cond_b7
    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->requestSuccess:Z

    iget-boolean p1, p1, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->requestSuccess:Z

    if-eq v1, p1, :cond_be

    return v2

    :cond_be
    return v0
.end method

.method public final getCallFailed()Z
    .registers 2

    .line 26
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callFailed:Z

    return v0
.end method

.method public final getCallStartTime()J
    .registers 3

    .line 8
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callStartTime:J

    return-wide v0
.end method

.method public final getConnectDurationMs()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectDurationMs:J

    return-wide v0
.end method

.method public final getConnectException()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectException:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectFailed()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailed:Z

    return v0
.end method

.method public final getConnectFailedDurationMs()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailedDurationMs:J

    return-wide v0
.end method

.method public final getConnectStartTime()J
    .registers 3

    .line 13
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectStartTime:J

    return-wide v0
.end method

.method public final getDnsDurationMs()J
    .registers 3

    .line 11
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsDurationMs:J

    return-wide v0
.end method

.method public final getDnsException()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsException:Ljava/lang/String;

    return-object v0
.end method

.method public final getDnsFailed()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsFailed:Z

    return v0
.end method

.method public final getDnsStartTime()J
    .registers 3

    .line 10
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsStartTime:J

    return-wide v0
.end method

.method public final getException()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpError()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpError:Z

    return v0
.end method

.method public final getHttpErrorMessage()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestSuccess()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->requestSuccess:Z

    return v0
.end method

.method public final getResponseCode()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseCode:I

    return v0
.end method

.method public final getResponseHeaderDurationMs()J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseHeaderDurationMs:J

    return-wide v0
.end method

.method public final getResponseStartTime()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseStartTime:J

    return-wide v0
.end method

.method public final getTotalDurationMs()J
    .registers 3

    .line 24
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->totalDurationMs:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callStartTime:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsStartTime:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsDurationMs:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectStartTime:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectDurationMs:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailedDurationMs:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectException:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_45

    const/4 v1, 0x0

    goto :goto_49

    :cond_45
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_49
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseStartTime:J

    invoke-static {v3, v4}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseHeaderDurationMs:J

    invoke-static {v3, v4}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->totalDurationMs:J

    invoke-static {v3, v4}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callFailed:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_72

    const/4 v1, 0x1

    :cond_72
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    if-nez v1, :cond_7b

    const/4 v1, 0x0

    goto :goto_7f

    :cond_7b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsFailed:Z

    if-eqz v1, :cond_87

    const/4 v1, 0x1

    :cond_87
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsException:Ljava/lang/String;

    if-nez v1, :cond_90

    const/4 v1, 0x0

    goto :goto_94

    :cond_90
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_94
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailed:Z

    if-eqz v1, :cond_9c

    const/4 v1, 0x1

    :cond_9c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpError:Z

    if-eqz v1, :cond_a4

    const/4 v1, 0x1

    :cond_a4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpErrorMessage:Ljava/lang/String;

    if-nez v1, :cond_ac

    goto :goto_b0

    :cond_ac
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->requestSuccess:Z

    if-eqz v1, :cond_b8

    goto :goto_b9

    :cond_b8
    move v3, v1

    :goto_b9
    add-int/2addr v0, v3

    return v0
.end method

.method public final setCallFailed(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callFailed:Z

    return-void
.end method

.method public final setCallStartTime(J)V
    .registers 3

    .line 8
    iput-wide p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callStartTime:J

    return-void
.end method

.method public final setConnectDurationMs(J)V
    .registers 3

    .line 14
    iput-wide p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectDurationMs:J

    return-void
.end method

.method public final setConnectException(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectException:Ljava/lang/String;

    return-void
.end method

.method public final setConnectFailed(Z)V
    .registers 2

    .line 33
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailed:Z

    return-void
.end method

.method public final setConnectFailedDurationMs(J)V
    .registers 3

    .line 15
    iput-wide p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailedDurationMs:J

    return-void
.end method

.method public final setConnectStartTime(J)V
    .registers 3

    .line 13
    iput-wide p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectStartTime:J

    return-void
.end method

.method public final setDnsDurationMs(J)V
    .registers 3

    .line 11
    iput-wide p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsDurationMs:J

    return-void
.end method

.method public final setDnsException(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsException:Ljava/lang/String;

    return-void
.end method

.method public final setDnsFailed(Z)V
    .registers 2

    .line 31
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsFailed:Z

    return-void
.end method

.method public final setDnsStartTime(J)V
    .registers 3

    .line 10
    iput-wide p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsStartTime:J

    return-void
.end method

.method public final setException(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    return-void
.end method

.method public final setHttpError(Z)V
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpError:Z

    return-void
.end method

.method public final setHttpErrorMessage(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public final setRequestSuccess(Z)V
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->requestSuccess:Z

    return-void
.end method

.method public final setResponseCode(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseCode:I

    return-void
.end method

.method public final setResponseHeaderDurationMs(J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseHeaderDurationMs:J

    return-void
.end method

.method public final setResponseStartTime(J)V
    .registers 3

    .line 19
    iput-wide p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseStartTime:J

    return-void
.end method

.method public final setTotalDurationMs(J)V
    .registers 3

    .line 24
    iput-wide p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->totalDurationMs:J

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->url:Ljava/lang/String;

    return-void
.end method

.method public final toJson()Ljava/lang/String;
    .registers 3

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSONObject(toMap()).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final toMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x14

    new-array v0, v0, [Lkotlin/Pair;

    .line 45
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 46
    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "callStartTime"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 47
    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dnsStartTime"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 48
    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsDurationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dnsDurationMs"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 49
    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "connectStartTime"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 50
    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectDurationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "connectDurationMs"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 51
    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailedDurationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "connectFailedDurationMs"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 52
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectException:Ljava/lang/String;

    const-string v2, "connectException"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 53
    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "responseStartTime"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 54
    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseHeaderDurationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "responseHeaderDurationMs"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 55
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "responseCode"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 56
    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->totalDurationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "totalDurationMs"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 57
    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callFailed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "callFailed"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 58
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    const-string v2, "exception"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 59
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    const-string v2, "dnsFailed"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 60
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    const-string v2, "dnsException"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 61
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    const-string v2, "connectFailed"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 62
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    const-string v2, "httpError"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 63
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    const-string v2, "httpErrorMessage"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 64
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    const-string v2, "requestSuccess"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 44
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTTraceLog(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dnsStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dnsDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connectStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connectDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connectFailedDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailedDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connectException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectException:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", responseStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", responseHeaderDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseHeaderDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->totalDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->callFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->exception:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dnsFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dnsException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->dnsException:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->connectFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", httpError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", httpErrorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->httpErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CTTraceLog;->requestSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
