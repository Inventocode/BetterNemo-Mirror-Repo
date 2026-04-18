.class public Landroidx/constraintlayout/core/widgets/Barrier;
.super Landroidx/constraintlayout/core/widgets/HelperWidget;
.source "Barrier.java"


# instance fields
.field private mAllowsGoneWidget:Z

.field private mBarrierType:I

.field private mMargin:I

.field resolved:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 15

    .line 139
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 140
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v2, 0x2

    aput-object v0, p2, v2

    .line 141
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v3, 0x1

    aput-object v0, p2, v3

    .line 142
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v4, 0x3

    aput-object v0, p2, v4

    const/4 p2, 0x0

    .line 143
    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    array-length v5, v0

    if-ge p2, v5, :cond_29

    .line 144
    aget-object v5, v0, p2

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iput-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    .line 146
    :cond_29
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ltz p2, :cond_202

    const/4 v5, 0x4

    if-ge p2, v5, :cond_202

    .line 147
    aget-object p2, v0, p2

    .line 153
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    if-nez v0, :cond_39

    .line 154
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    .line 156
    :cond_39
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    if-eqz v0, :cond_70

    .line 157
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    .line 158
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz p2, :cond_5d

    if-ne p2, v3, :cond_46

    goto :goto_5d

    :cond_46
    if-eq p2, v2, :cond_4a

    if-ne p2, v4, :cond_6f

    .line 162
    :cond_4a
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 163
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    goto :goto_6f

    .line 159
    :cond_5d
    :goto_5d
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 160
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    :cond_6f
    :goto_6f
    return-void

    :cond_70
    const/4 v0, 0x0

    .line 172
    :goto_71
    iget v6, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v0, v6, :cond_be

    .line 173
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v6, v6, v0

    .line 174
    iget-boolean v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v7, :cond_84

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v7

    if-nez v7, :cond_84

    goto :goto_bb

    .line 177
    :cond_84
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_8a

    if-ne v7, v3, :cond_a0

    .line 178
    :cond_8a
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_a0

    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v7, :cond_a0

    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v7, :cond_a0

    :goto_9e
    const/4 v0, 0x1

    goto :goto_bf

    .line 182
    :cond_a0
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eq v7, v2, :cond_a6

    if-ne v7, v4, :cond_bb

    .line 183
    :cond_a6
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_bb

    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v7, :cond_bb

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_bb

    goto :goto_9e

    :cond_bb
    :goto_bb
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    :cond_be
    const/4 v0, 0x0

    .line 190
    :goto_bf
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v6

    if-nez v6, :cond_d2

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v6

    if-eqz v6, :cond_d0

    goto :goto_d2

    :cond_d0
    const/4 v6, 0x0

    goto :goto_d3

    :cond_d2
    :goto_d2
    const/4 v6, 0x1

    .line 191
    :goto_d3
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v7

    if-nez v7, :cond_e6

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v7

    if-eqz v7, :cond_e4

    goto :goto_e6

    :cond_e4
    const/4 v7, 0x0

    goto :goto_e7

    :cond_e6
    :goto_e6
    const/4 v7, 0x1

    :goto_e7
    if-nez v0, :cond_fd

    .line 192
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-nez v8, :cond_ef

    if-nez v6, :cond_fb

    :cond_ef
    if-ne v8, v2, :cond_f3

    if-nez v7, :cond_fb

    :cond_f3
    if-ne v8, v3, :cond_f7

    if-nez v6, :cond_fb

    :cond_f7
    if-ne v8, v4, :cond_fd

    if-eqz v7, :cond_fd

    :cond_fb
    const/4 v6, 0x1

    goto :goto_fe

    :cond_fd
    const/4 v6, 0x0

    :goto_fe
    const/4 v7, 0x5

    if-nez v6, :cond_102

    const/4 v7, 0x4

    :cond_102
    const/4 v6, 0x0

    .line 201
    :goto_103
    iget v8, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v6, v8, :cond_15e

    .line 202
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v8, v8, v6

    .line 203
    iget-boolean v9, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v9, :cond_116

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v9

    if-nez v9, :cond_116

    goto :goto_15b

    .line 206
    :cond_116
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v10, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    aget-object v9, v9, v10

    invoke-virtual {p1, v9}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9

    .line 207
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v10, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    aget-object v11, v8, v10

    iput-object v9, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 209
    aget-object v11, v8, v10

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v11, :cond_13c

    aget-object v11, v8, v10

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v11, p0, :cond_13c

    .line 211
    aget-object v8, v8, v10

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v8, v1

    goto :goto_13d

    :cond_13c
    const/4 v8, 0x0

    :goto_13d
    if-eqz v10, :cond_14b

    if-ne v10, v2, :cond_142

    goto :goto_14b

    .line 216
    :cond_142
    iget-object v10, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v11, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    add-int/2addr v11, v8

    invoke-virtual {p1, v10, v9, v11, v0}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V

    goto :goto_153

    .line 214
    :cond_14b
    :goto_14b
    iget-object v10, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v11, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    sub-int/2addr v11, v8

    invoke-virtual {p1, v10, v9, v11, v0}, Landroidx/constraintlayout/core/LinearSystem;->addLowerBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V

    .line 223
    :goto_153
    iget-object v10, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v11, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    add-int/2addr v11, v8

    invoke-virtual {p1, v10, v9, v11, v7}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    :goto_15b
    add-int/lit8 v6, v6, 0x1

    goto :goto_103

    .line 230
    :cond_15e
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/16 v0, 0x8

    if-nez p2, :cond_18b

    .line 231
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 232
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 233
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto/16 :goto_202

    :cond_18b
    if-ne p2, v3, :cond_1b3

    .line 235
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 236
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 237
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_202

    :cond_1b3
    if-ne p2, v2, :cond_1db

    .line 239
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 240
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 241
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_202

    :cond_1db
    if-ne p2, v4, :cond_202

    .line 243
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 244
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 245
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    :cond_202
    :goto_202
    return-void
.end method

.method public allSolved()Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 274
    :goto_4
    iget v4, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v2, v4, :cond_37

    .line 275
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v4, v4, v2

    .line 276
    iget-boolean v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v7, :cond_19

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v7

    if-nez v7, :cond_19

    goto :goto_34

    .line 279
    :cond_19
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_1f

    if-ne v7, v1, :cond_27

    :cond_1f
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v7

    if-nez v7, :cond_27

    :goto_25
    const/4 v3, 0x0

    goto :goto_34

    .line 281
    :cond_27
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eq v7, v6, :cond_2d

    if-ne v7, v5, :cond_34

    :cond_2d
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_25

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_37
    if-eqz v3, :cond_e6

    if-lez v4, :cond_e6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 290
    :goto_3d
    iget v4, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v0, v4, :cond_d2

    .line 291
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v4, v4, v0

    .line 292
    iget-boolean v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v7, :cond_51

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v7

    if-nez v7, :cond_51

    goto/16 :goto_ce

    :cond_51
    if-nez v3, :cond_89

    .line 296
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-nez v3, :cond_62

    .line 297
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    goto :goto_88

    :cond_62
    if-ne v3, v1, :cond_6f

    .line 299
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    goto :goto_88

    :cond_6f
    if-ne v3, v6, :cond_7c

    .line 301
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    goto :goto_88

    :cond_7c
    if-ne v3, v5, :cond_88

    .line 303
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    :cond_88
    :goto_88
    const/4 v3, 0x1

    .line 307
    :cond_89
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-nez v7, :cond_9c

    .line 308
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_ce

    :cond_9c
    if-ne v7, v1, :cond_ad

    .line 310
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_ce

    :cond_ad
    if-ne v7, v6, :cond_be

    .line 312
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_ce

    :cond_be
    if-ne v7, v5, :cond_ce

    .line 314
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_ce
    :goto_ce
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3d

    .line 317
    :cond_d2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    add-int/2addr v2, v0

    .line 318
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v0, :cond_e0

    if-ne v0, v1, :cond_dc

    goto :goto_e0

    .line 321
    :cond_dc
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    goto :goto_e3

    .line 319
    :cond_e0
    :goto_e0
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 326
    :goto_e3
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    return v1

    :cond_e6
    return v0
.end method

.method public allowedInBarrier()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 90
    check-cast p1, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 91
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 92
    iget-boolean p2, p1, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 93
    iget p1, p1, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    iput p1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    return-void
.end method

.method public getAllowsGoneWidget()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    return v0
.end method

.method public getBarrierType()I
    .registers 2

    .line 52
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    return v0
.end method

.method public getMargin()I
    .registers 2

    .line 254
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    return v0
.end method

.method public getOrientation()I
    .registers 4

    .line 258
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    const/4 v0, -0x1

    return v0

    :cond_f
    return v1

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isResolvedHorizontally()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    return v0
.end method

.method public isResolvedVertically()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    return v0
.end method

.method protected markWidgets()V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v1, v2, :cond_2d

    .line 112
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    .line 113
    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v3, :cond_15

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_2a

    .line 116
    :cond_15
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    if-ne v3, v4, :cond_1d

    goto :goto_27

    :cond_1d
    const/4 v5, 0x2

    if-eq v3, v5, :cond_23

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2a

    .line 119
    :cond_23
    invoke-virtual {v2, v4, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    goto :goto_2a

    .line 117
    :cond_27
    :goto_27
    invoke-virtual {v2, v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2d
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 2

    .line 58
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method

.method public setBarrierType(I)V
    .registers 2

    .line 55
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    return-void
.end method

.method public setMargin(I)V
    .registers 2

    .line 250
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Barrier] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 99
    :goto_1b
    iget v2, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v1, v2, :cond_4c

    .line 100
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    if-lez v1, :cond_36

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 106
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
