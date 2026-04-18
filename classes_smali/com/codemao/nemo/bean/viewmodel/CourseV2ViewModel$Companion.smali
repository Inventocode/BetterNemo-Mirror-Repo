.class public final Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;
.super Ljava/lang/Object;
.source "CourseV2ViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCourseV2ViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CourseV2ViewModel.kt\ncom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,166:1\n1851#2,2:167\n*S KotlinDebug\n*F\n+ 1 CourseV2ViewModel.kt\ncom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion\n*L\n108#1:167,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;-><init>()V

    return-void
.end method

.method private final generateSubjectTitleOrTwiceModels(Lcom/codemao/nemo/bean/CourseV2ResponseItem;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/bean/CourseV2ResponseItem;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 32
    :goto_6
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getCourse_page()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    :goto_12
    if-ge v2, v3, :cond_101

    const/4 v3, 0x0

    if-nez v2, :cond_49

    .line 34
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getCourse_page()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_23

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    :cond_23
    if-eqz v3, :cond_46

    .line 36
    sget-object v4, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->Companion:Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;

    invoke-direct {v4, v3, p1, v0}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;->getSubjectItem(Lcom/codemao/nemo/bean/CourseV2ResponseCourse;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Z)Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    move-result-object v3

    .line 37
    new-instance v11, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    .line 38
    sget-object v5, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectTitle:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    .line 39
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 40
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getTotal_course()I

    move-result v8

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getId()J

    move-result-wide v9

    move-object v4, v11

    .line 37
    invoke-direct/range {v4 .. v10}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;-><init>(Lcom/codemao/nemo/bean/viewmodel/SubjectType;Ljava/util/List;Ljava/lang/String;IJ)V

    .line 43
    invoke-interface {p2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 47
    :cond_49
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getCourse_page()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5b

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    goto :goto_5c

    :cond_5b
    move-object v4, v3

    :goto_5c
    if-eqz v4, :cond_67

    .line 51
    sget-object v6, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->Companion:Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;

    invoke-direct {v6, v4, p1, v1}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;->getSubjectItem(Lcom/codemao/nemo/bean/CourseV2ResponseCourse;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Z)Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    move-result-object v4

    .line 52
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_67
    add-int/lit8 v4, v2, 0x1

    .line 55
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getCourse_page()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_74

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_75

    :cond_74
    const/4 v6, 0x0

    :goto_75
    if-ge v4, v6, :cond_90

    .line 57
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getCourse_page()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_84

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    goto :goto_85

    :cond_84
    move-object v4, v3

    :goto_85
    if-eqz v4, :cond_90

    .line 59
    sget-object v6, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->Companion:Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;

    invoke-direct {v6, v4, p1, v1}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;->getSubjectItem(Lcom/codemao/nemo/bean/CourseV2ResponseCourse;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Z)Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    move-result-object v4

    .line 60
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_90
    if-eqz v0, :cond_e2

    add-int/lit8 v4, v2, 0x2

    .line 65
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getCourse_page()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_9f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_a0

    :cond_9f
    const/4 v6, 0x0

    :goto_a0
    if-ge v4, v6, :cond_bb

    .line 67
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getCourse_page()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_af

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    goto :goto_b0

    :cond_af
    move-object v4, v3

    :goto_b0
    if-eqz v4, :cond_bb

    .line 69
    sget-object v6, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->Companion:Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;

    invoke-direct {v6, v4, p1, v1}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;->getSubjectItem(Lcom/codemao/nemo/bean/CourseV2ResponseCourse;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Z)Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    move-result-object v4

    .line 70
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_bb
    add-int/lit8 v4, v2, 0x3

    .line 73
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getCourse_page()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_c8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_c9

    :cond_c8
    const/4 v6, 0x0

    :goto_c9
    if-ge v4, v6, :cond_e2

    .line 75
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getCourse_page()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_d7

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    :cond_d7
    if-eqz v3, :cond_e2

    .line 77
    sget-object v4, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->Companion:Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;

    invoke-direct {v4, v3, p1, v1}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;->getSubjectItem(Lcom/codemao/nemo/bean/CourseV2ResponseCourse;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Z)Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    move-result-object v3

    .line 78
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_e2
    new-instance v10, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    .line 84
    sget-object v4, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectTwice:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    .line 86
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getTotal_course()I

    move-result v7

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getId()J

    move-result-wide v8

    move-object v3, v10

    .line 83
    invoke-direct/range {v3 .. v9}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;-><init>(Lcom/codemao/nemo/bean/viewmodel/SubjectType;Ljava/util/List;Ljava/lang/String;IJ)V

    .line 89
    invoke-interface {p2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_fd

    const/4 v3, 0x4

    goto :goto_fe

    :cond_fd
    const/4 v3, 0x2

    :goto_fe
    add-int/2addr v2, v3

    goto/16 :goto_6

    :cond_101
    return-void
.end method

.method private final getSubjectItem(Lcom/codemao/nemo/bean/CourseV2ResponseCourse;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Z)Lcom/codemao/nemo/bean/viewmodel/SubjectItem;
    .registers 12

    .line 96
    new-instance v7, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    .line 97
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getId()J

    move-result-wide v1

    if-eqz p3, :cond_d

    .line 98
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getPad_main_push_preview_url()Ljava/lang/String;

    move-result-object p3

    goto :goto_11

    :cond_d
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getMain_push_preview_url()Ljava/lang/String;

    move-result-object p3

    :goto_11
    move-object v3, p3

    .line 99
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object v0, v7

    move-object v5, p2

    move-object v6, p1

    .line 96
    invoke-direct/range {v0 .. v6}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)V

    return-object v7
.end method


# virtual methods
.method public final generateSubjectListModels(Lcom/codemao/nemo/bean/CourseV2ResponseItem;)Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;
    .registers 13

    const-string v0, "courseV2ResponseItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getCourse_page()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    .line 109
    new-instance v1, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    .line 110
    invoke-virtual {v10}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getId()J

    move-result-wide v5

    .line 111
    invoke-virtual {v10}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getPreview_url()Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-virtual {v10}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getTitle()Ljava/lang/String;

    move-result-object v8

    move-object v4, v1

    move-object v9, p1

    .line 109
    invoke-direct/range {v4 .. v10}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)V

    .line 115
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 118
    :cond_38
    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    .line 119
    sget-object v2, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectList:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    .line 121
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getTotal_course()I

    move-result v5

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getId()J

    move-result-wide v6

    move-object v1, v0

    .line 118
    invoke-direct/range {v1 .. v7}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;-><init>(Lcom/codemao/nemo/bean/viewmodel/SubjectType;Ljava/util/List;Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public final generateSubjectViewModel(Lcom/codemao/nemo/bean/CourseV2ResponseItem;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/bean/CourseV2ResponseItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;",
            ">;"
        }
    .end annotation

    const-string v0, "courseV2ResponseItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getPackage_type()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;->generateSubjectTitleOrTwiceModels(Lcom/codemao/nemo/bean/CourseV2ResponseItem;Ljava/util/List;)V

    goto :goto_22

    .line 22
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;->generateSubjectListModels(Lcom/codemao/nemo/bean/CourseV2ResponseItem;)Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    return-object v0
.end method
